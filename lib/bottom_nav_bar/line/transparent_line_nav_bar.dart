import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_line_container.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../data/nav_bar_item.dart';
import '../widgets/nav_bar_transparent_icon.dart';

class TransparentLineNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final void Function(int)? onTap;
  final bool hasTitle;
  final double cornerRadius;
  final int currentIndex;

  const TransparentLineNavBar(
      {super.key,
      required this.items,
      this.onTap,
      required this.hasTitle,
      required this.cornerRadius,
      required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return BaseLineContainer(
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
          showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
        ));
  }
}
