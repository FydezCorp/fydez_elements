import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:gap/gap.dart';

class IconPacksDemoPage extends StatefulWidget {
  const IconPacksDemoPage({Key? key}) : super(key: key);

  @override
  State<IconPacksDemoPage> createState() => _IconPacksDemoPageState();
}

class _IconPacksDemoPageState extends State<IconPacksDemoPage> {
  final List<IconPacks> iconPackList = IconPacks.values;
  IconPacks selectedIconPack = IconPacks.material;
  // List<FyIcons> useCases = FyIcons.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropdownButton(
                value: selectedIconPack,
                items: iconPackList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedIconPack = value!;
                  });
                },
              ),
              Wrap(
                children: List.generate(
                  1,
                  (index) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          FyIcon(
                            context,
                            iconPack: selectedIconPack,
                          ).home,
                        ),
                        const Gap(5.0),
                        // Text(useCases[index].name)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
