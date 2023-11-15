import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../data/nav_bar_item.dart';
import '../widgets/base_line_container.dart';
import '../widgets/nav_bar_bold_icon.dart';

class BoldLineNavBar extends StatelessWidget {
  final List<NavBarItem> items;
  final void Function(int)? onTap;
  final bool hasTitle;
  final double cornerRadius;
  final int currentIndex;

  const BoldLineNavBar({
    super.key,
    required this.items,
    this.onTap,
    required this.hasTitle,
    required this.cornerRadius,
    required this.currentIndex,
  });
  @override
  Widget build(BuildContext context) {
    return BaseLineContainer(
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
        selectedItemColor: context.colorScheme.primary,
        unselectedItemColor: context.fyColors.textSixColor,
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: hasTitle,
        showUnselectedLabels: hasTitle,
      ),
    );
  }
}
