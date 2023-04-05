import 'package:flutter/material.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';

abstract class NavBarFactory {
  Widget build({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    double borderRadius = 0,
    int currentIndex = 0,
  });

  factory NavBarFactory({
    required NavBarStyle style,
    required NavBarEffect effect,
  }) {
    return SampleNavBar();
  }
}

class SampleNavBar implements NavBarFactory {
  @override
  Widget build({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    double borderRadius = 0,
    int currentIndex = 0,
  }) {
    return BottomNavigationBar(
      items: items
          .map(
            (item) => BottomNavigationBarItem(
              icon: Icon(item.icon),
              label: item.label,
            ),
          )
          .toList(),
      selectedItemColor: const Color(0xff1A1A1A),
      unselectedItemColor: const Color(0xff949494),
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
    );
  }
}
