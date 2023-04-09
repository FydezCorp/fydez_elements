import 'package:flutter/material.dart';

import '../data/nav_bar_item.dart';

class NavBarBoldIcon extends StatelessWidget {
  final NavBarItem item;
  final bool isSelected;
  const NavBarBoldIcon({
    required this.item,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(isSelected ? item.activeIcon : item.icon);
  }
}
