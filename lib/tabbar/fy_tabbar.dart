import 'package:flutter/material.dart';
import 'package:fydez_elements/tabbar/data/tabbar_type.dart';
import 'package:fydez_elements/tabbar/tabbar_factory.dart';

import 'data/tab_data.dart';

class FyTabbar {
  static Widget create(
    BuildContext context, {
    required List<TabData> tabs,
    required Function(int tabIndex) onTabChange,
    required int initialIndex,
    TabbarType? type,
  }) {
    final finalType = type ?? TabbarType.normal;
    return TabbarFactory(type: finalType).build(
      context,
      tabs: tabs,
      onTabChange: onTabChange,
      initialIndex: initialIndex,
    );
  }
}
