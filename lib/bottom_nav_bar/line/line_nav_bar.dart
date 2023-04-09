import 'package:flutter/material.dart';

import '../data/nav_bar_item.dart';
import '../data/nav_bar_style.dart';
import '../nav_bar_factory.dart';
import 'bold_line_nav_bar.dart';
import 'main_title_line_nav_bar.dart';
import 'transparent_line_nav_bar.dart';

class LineNavBar implements NavBarFactory {
  @override
  Widget build({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    required double cornerRadius,
    required int currentIndex,
    required NavBarStyle style,
    re
  }) {
    switch (style) {
      case NavBarStyle.transparent:
        return TransparentLineNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
      case NavBarStyle.bold:
        return BoldLineNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
      case NavBarStyle.mainTitle:
        return MainTitleLineNavBar(
          items: items,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          currentIndex: currentIndex,
          onTap: onTap,
        );
    }
  }
}
