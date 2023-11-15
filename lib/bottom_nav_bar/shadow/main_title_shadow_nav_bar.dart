import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_shadow_container.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../data/nav_bar_item.dart';
import '../widgets/nav_bar_main_title_icon.dart';

class MainTitleShadowNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final void Function(int)? onTap;
  final bool hasTitle;
  final double cornerRadius;
  final int currentIndex;

  const MainTitleShadowNavBar(
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
                  icon: NavBarMainTitleIcon(
                    icon: item.icon,
                    label: item.label,
                    isSelected: currentIndex == items.indexOf(item),
                  ),
                  label: item.label,
                ),
              )
              .toList(),
          selectedItemColor: context.fyColors.textTenColor,
          unselectedItemColor: context.fyColors.textSixColor,
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: true,
        ));
  }
}
