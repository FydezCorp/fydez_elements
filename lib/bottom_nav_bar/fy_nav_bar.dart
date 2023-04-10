import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';

// * Abstract Factory for Bottom Navigation Bar
class FyBottomNavBar {
  /// Creates an instance of [`FyBottomNavBar`]. Make sure to use it inside a stack
  /// instead of putting it inside `bottomNavigationBar` filed of scaffold.
  static Widget build({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required NavBarStyle style,
    required NavBarEffect effect,
    required bool hasTitle,
    double cornerRadius = 0,
    int currentIndex = 0,
  }) {
    return NavBarFactory(
      effect: effect,
    ).build(
      style: style,
      items: items,
      onTap: onTap,
      hasTitle: hasTitle,
      currentIndex: currentIndex,
      cornerRadius: cornerRadius,
    );
  }
}
