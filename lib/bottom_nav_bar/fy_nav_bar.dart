import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';

// * Abstract Factory for Bottom Navigation Bar
class FyBottomNavBar {
  /// Creates an instance of [`FyBottomNavBar`]. Make sure to use it inside a stack
  /// instead of putting it inside `bottomNavigationBar` filed of scaffold.
  static Widget createNavBar({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    NavBarStyle style = NavBarStyle.transparent,
    NavBarEffect effect = NavBarEffect.shadow,
    bool hasTitle = false,
    double cornerRadius = 0,
    int currentIndex = 0,
  }) {
    assert(items.length > 2, 'You should have more than 2 items.');
    
    return NavBarFactory(
      effect: effect,
    ).createNavBar(
      style: style,
      items: items,
      onTap: onTap,
      hasTitle: hasTitle,
      currentIndex: currentIndex,
      cornerRadius: cornerRadius,
    );
  }
}
