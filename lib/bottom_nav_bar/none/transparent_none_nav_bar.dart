import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/nav_bar_transparent_icon.dart';

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
    double margin() {
      return cornerRadius == 0 ? 0 : 12.0;
    }

    return Container(
      margin: EdgeInsets.all(margin()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
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
          // TODO: Read these colors from theme.
          selectedItemColor: const Color(0xff1A1A1A),
          unselectedItemColor: const Color(0xff949494),
          onTap: onTap,
          currentIndex: currentIndex,
          showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
