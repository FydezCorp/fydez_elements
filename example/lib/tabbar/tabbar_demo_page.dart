import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class TabbarDemoPage extends StatelessWidget {
  const TabbarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.fyColors.textOneColor,
        appBar: AppBar(
          title: const Text('Tabbar Demo Page'),
          bottom: const _TabbarWidget(),
        ),
        body: const Center(
          child: Text('Sample Tabbar Page!'),
        ));
  }
}

class _TabbarWidget extends StatelessWidget with PreferredSizeWidget {
  const _TabbarWidget({Key? key}) : super(key: key);

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
      },
      initialIndex: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
