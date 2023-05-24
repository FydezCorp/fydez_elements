import 'package:flutter/material.dart';

import '../data/nav_bar_item.dart';
import '../data/nav_bar_style.dart';
import '../nav_bar_factory.dart';
import 'bold_none_nav_bar.dart';
import 'main_title_none_nav_bar.dart';
import 'transparent_none_nav_bar.dart';

class NoneNavBar implements NavBarFactory {
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
        return TransparentNoneNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
      case NavBarStyle.bold:
        return BoldNoneNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
      case NavBarStyle.mainTitle:
        return MainTitleNoneNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
    }
  }
}
