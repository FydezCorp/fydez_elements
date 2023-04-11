import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:gap/gap.dart';

class IconPacksDemoPage extends StatefulWidget {
  const IconPacksDemoPage({Key? key}) : super(key: key);

  @override
  State<IconPacksDemoPage> createState() => _IconPacksDemoPageState();
}

class _IconPacksDemoPageState extends State<IconPacksDemoPage> {
  final List<String> iconPackList = iconPacks.map((e) => e.name).toList();
  String selectedIconPack = 'material';
  List<FyIcons> useCases = FyIcons.values;
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
                          child: Text(e),
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
                  useCases.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          // FyIcon.icon(
                          //   context,
                          //   icon: useCases[index],
                          //   iconPack: selectedIconPack,
                          // ),
                          context.icon(
                            useCases[index],
                            iconPack: selectedIconPack,
                          ),
                        ),
                        const Gap(5.0),
                        Text(useCases[index].name)
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
