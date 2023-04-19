import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../cubit/icon_pack_cubit.dart';
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
                    context.read<IconPackCubit>().changeIconPack(value);
                  });
                },
              ),
              // TODO: Can we automate this?
              Wrap(
                children: [
                  IconWidget(
                    icon: FyIcon.of(context).home,
                    name: 'home',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).eye,
                    name: 'eye',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).heart,
                    name: 'heart',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).login,
                    name: 'login',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).logout,
                    name: 'logout',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).store,
                    name: 'store',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).user,
                    name: 'user',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).arrowDown,
                    name: 'arrowDown',
                  ),
                  IconWidget(
                    icon: FyIcon.of(context).arrowUp,
                    name: 'arrowUp',
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
