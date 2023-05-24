import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class TabbarDemoPage extends StatefulWidget {
  const TabbarDemoPage({Key? key}) : super(key: key);

  @override
  State<TabbarDemoPage> createState() => _TabbarDemoPageState();
}

class _TabbarDemoPageState extends State<TabbarDemoPage> {
  int tab = 0;
  TabbarType type = TabbarType.underlined;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.fyColors.textOneColor,
        appBar: AppBar(
          title: const Text('Tabbar Demo Page'),
          bottom: _TabbarWidget(
              type: type,
              onTabChange: (index) {
                setState(() {
                  tab = index;
                });
              }),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Sample Tabbar Page! (tab: $tab)'),
              const Gap(10.0),
              DropdownButton<TabbarType>(
                items: TabbarType.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    type = value!;
                  });
                },
                value: type,
              )
            ],
          ),
        ));
  }
}

class _TabbarWidget extends StatelessWidget with PreferredSizeWidget {
  final TabbarType type;
  final Function(int) onTabChange;
  const _TabbarWidget({
    Key? key,
    required this.type,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FyTabbar.create(
      context,
      tabs: [
        TabData(title: 'Tab 1'),
        TabData(title: 'Tab 2'),
        TabData(title: 'Tab 3'),
        TabData(title: 'Tab 4'),
        TabData(title: 'Tab 5'),
        TabData(title: 'Tab 6'),
        TabData(title: 'Tab 7'),
        TabData(title: 'Tab 8'),
        TabData(title: 'Tab 9'),
      ],
      onTabChange: (index) {
        log(index.toString());
        onTabChange(index);
      },
      initialIndex: 0,
      type: type,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
