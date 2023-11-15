import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_none_container.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/nav_bar_transparent_icon.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../data/nav_bar_item.dart';

class TransparentNoneNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final void Function(int)? onTap;
  final bool hasTitle;
  final double cornerRadius;
  final int currentIndex;

  const TransparentNoneNavBar(
      {super.key,
      required this.items,
      this.onTap,
      required this.hasTitle,
      required this.cornerRadius,
      required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return BaseNoneContainer(
        cornerRadius: cornerRadius,
        child: BottomNavigationBar(
          items: items
              .map(
                (item) => BottomNavigationBarItem(
                  icon: NavBarTransparentIcon(
                    icon: item.icon,
                    isSelected: currentIndex == items.indexOf(item),
                  ),
                  label: item.label,
                ),
              )
              .toList(),
          selectedItemColor: context.colorScheme.primary,
          unselectedItemColor: context.fyColors.textSixColor,
          onTap: onTap,
          currentIndex: currentIndex,
          showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          type: BottomNavigationBarType.fixed,
        ));
  }
}
