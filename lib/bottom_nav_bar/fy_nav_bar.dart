// * Abstract Factory for Bottom Navigation Bar
import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';

class FyBottomNavBar {
  static Widget getBottomNavBar({
    required List<NavBarItem> items,
    required NavBarStyle style,
    required NavBarEffect effect,
    required bool hasTitle,
    double borderRadius = 0,
  }) {
    return NavBarFactory(
      style: style,
      effect: effect,
    ).build(
      items: items,
      hasTitle: hasTitle,
    );
  }
}
