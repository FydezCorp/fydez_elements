import 'package:flutter/material.dart';

import '../data/nav_bar_item.dart';
import '../data/nav_bar_style.dart';
import '../nav_bar_factory.dart';
import 'bold_shadow_nav_bar.dart';
import 'main_title_shadow_nav_bar.dart';
import 'transparent_shadow_nav_bar.dart';

class ShadowNavBar implements NavBarFactory {
  @override
  Widget createNavBar({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    required double cornerRadius,
    required int currentIndex,
    required NavBarStyle style,
  }) {
    switch (style) {
      case NavBarStyle.transparent:
        return TransparentShadowNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
      case NavBarStyle.bold:
        return BoldShadowNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
      case NavBarStyle.mainTitle:
        return MainTitleShadowNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
    }
  }
}
