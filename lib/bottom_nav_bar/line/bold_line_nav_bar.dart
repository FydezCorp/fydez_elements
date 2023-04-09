import 'package:flutter/material.dart';

import '../data/nav_bar_item.dart';
import '../widgets/base_line_container.dart';

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
                icon: Icon(item.icon),
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
      ),
    );
  }
}
