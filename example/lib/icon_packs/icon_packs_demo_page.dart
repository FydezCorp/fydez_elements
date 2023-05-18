import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/icon_packs/fy_icon.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /* DropdownButton(
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
                    context.read<IconPackCubit>().changeIconPack(value);
                  });
                },
              ), */
              // TODO: Can we automate this?
              Wrap(
                children: [
                  IconWidget(
                    icon: context.fyIcons.home,
                    name: 'home',
                  ),
                  IconWidget(
                    icon:  context.fyIcons.eye,
                    name: 'eye',
                  ),
                  IconWidget(
                    icon: context.fyIcons.heart,
                    name: 'heart',
                  ),
                  IconWidget(
                    icon: context.fyIcons.login,
                    name: 'login',
                  ),
                  IconWidget(
                    icon: context.fyIcons.logout,
                    name: 'logout',
                  ),
                  IconWidget(
                    icon: context.fyIcons.store,
                    name: 'store',
                  ),
                  IconWidget(
                    icon: context.fyIcons.user,
                    name: 'user',
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
        children: [FyIcon(icon), const Gap(5.0), Text(name)],
      ),
    );
  }
}
