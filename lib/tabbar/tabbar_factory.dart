import 'package:flutter/material.dart';

import 'data/tab_data.dart';
import 'data/tabbar_type.dart';
import 'impls/light_background_tabbar.dart';
import 'impls/underlined_tabbar.dart';

abstract class TabbarFactory {
  Widget build(
    BuildContext context, {
    Key? key,
    required List<TabData> tabs,
    required Function(int tabIndex) onTabChange,
    required int initialIndex,
  });

  factory TabbarFactory({required TabbarType type}) {
    switch (type) {
      case TabbarType.underlined:
        return UnderlinedTabbar();
      case TabbarType.lightBackground:
        return LightBackgroundTabbar();
    }
  }
}
