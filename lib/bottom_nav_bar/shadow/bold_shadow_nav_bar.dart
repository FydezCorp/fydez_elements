import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_shadow_container.dart';

import '../data/nav_bar_item.dart';
import '../widgets/nav_bar_bold_icon.dart';

class BoldShadowNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final void Function(int)? onTap;
  final bool hasTitle;
  final double cornerRadius;
  final int currentIndex;

  const BoldShadowNavBar(
      {super.key,
      required this.items,
      this.onTap,
      required this.hasTitle,
      required this.cornerRadius,
      required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return BaseShadowContainer(
        cornerRadius: cornerRadius,
        child: BottomNavigationBar(
          items: items
              .map(
                (item) => BottomNavigationBarItem(
                  icon: NavBarBoldIcon(
                    item: item,
                    isSelected: currentIndex == items.indexOf(item),
                  ),
                  label: item.label,
                ),
              )
              .toList(),
          // TODO: Read these colors from theme.
          selectedItemColor: const Color(0xff1A1A1A),
          unselectedItemColor: const Color(0xff949494),
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed, showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          elevation: 0,
        ));
  }
}
