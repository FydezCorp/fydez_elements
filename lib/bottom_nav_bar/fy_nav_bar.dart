// * Abstract Factory for Bottom Navigation Bar
import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';

// * Abstract Factory
class FyBottomNavBar {
  static Widget build({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required NavBarStyle style,
    required NavBarEffect effect,
    required bool hasTitle,
    double borderRadius = 0,
    int currentIndex = 0,
  }) {
    return NavBarFactory(
      style: style,
      effect: effect,
    ).build(
      items: items,
      onTap: onTap,
      hasTitle: hasTitle,
      currentIndex: currentIndex,
    );
  }
}
