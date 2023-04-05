import 'package:flutter/material.dart';

import '../data/nav_bar_item.dart';

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
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
