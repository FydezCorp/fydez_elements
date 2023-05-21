import 'package:flutter/material.dart';
import 'package:fydez_elements/tabbar/data/tabbar_type.dart';
import 'package:fydez_elements/tabbar/impls/normal_tabbar.dart';

import 'data/tab_data.dart';

abstract class TabbarFactory {
  Widget build(
    BuildContext context, {
    Key? key,
    required List<TabData> tabs,
    required Function(int tabIndex) onTabChange,
    required int initialIndex,
  });

  factory TabbarFactory({required TabbarType type}) {
    return NormalTabbar();
  }
}
