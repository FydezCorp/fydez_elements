import 'package:flutter/material.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';
import 'line/line_nav_bar.dart';
import 'none/none_nav_bar.dart';
import 'shadow/shadow_nav_bar.dart';

abstract class NavBarFactory {
  Widget createNavBar({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    required double cornerRadius,
    required int currentIndex,
    required NavBarStyle style,
  });

  factory NavBarFactory({
    required NavBarEffect effect,
  }) {
    switch (effect) {
      case NavBarEffect.shadow:
        return ShadowNavBar();
      case NavBarEffect.line:
        return LineNavBar();
      case NavBarEffect.none:
        return NoneNavBar();
    }
  }
}
