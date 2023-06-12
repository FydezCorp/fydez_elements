import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../gap.dart';

class IconPacksDemoPage extends StatefulWidget {
  const IconPacksDemoPage({Key? key}) : super(key: key);

  @override
  State<IconPacksDemoPage> createState() => _IconPacksDemoPageState();
}

class _IconPacksDemoPageState extends State<IconPacksDemoPage> {
  final List<IconPack> iconPackList = IconPack.values;
  IconPack selectedIconPack = IconPack.material;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              // TODO: Can we automate this?
              Wrap(
                children: [
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).home,
                    name: 'home',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).eye,
                    name: 'eye',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).heart,
                    name: 'heart',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).login,
                    name: 'login',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).logout,
                    name: 'logout',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).store,
                    name: 'store',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).user,
                    name: 'user',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).arrowDown,
                    name: 'arrowDown',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).arrowUp,
                    name: 'arrowUp',
                  ),
                  IconWidget(
                    icon: FyIcon(
                      context,
                      iconPack: selectedIconPack,
                    ).search,
                    name: 'search',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [Icon(icon), const Gap(5.0), Text(name)],
      ),
    );
  }
}
