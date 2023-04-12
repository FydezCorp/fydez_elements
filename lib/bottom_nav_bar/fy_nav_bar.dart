import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';

/// * Abstract Factory for Bottom Navigation Bar
class FyBottomNavBar {
  /// Creates an instance of [`FyBottomNavBar`]. Make sure to use it inside a stack
  /// instead of putting it inside `bottomNavigationBar` field of scaffold.
  static Widget createNavBar({
    /// Required list of nav bar items to display.
    required List<NavBarItem> items,

    /// Callback function that will be invoked when an item in the nav bar is tapped.
    required void Function(int)? onTap,

    /// Style of the nav bar.
    NavBarStyle style = NavBarStyle.transparent,

    /// Effect to apply to the nav bar.
    NavBarEffect effect = NavBarEffect.shadow,

    /// Whether to display a title above the nav bar.
    bool hasTitle = false,

    /// Corner radius of the nav bar.
    double cornerRadius = 0,

    /// Index of the currently selected item in the nav bar.
    int currentIndex = 0,
  }) {
    /// Check that there are at least 2 items in the nav bar.
    assert(items.length > 2, 'You should have more than 2 items.');

    /// Create a new instance of the nav bar using the provided parameters.
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
