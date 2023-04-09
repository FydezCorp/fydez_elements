import 'package:flutter/material.dart';

class NavBarItem {
  final IconData icon;
  final IconData? activeIcon;
  final String label;

  IconData get activeIconGetter => activeIcon ?? icon;

  NavBarItem({
    required this.icon,
    required this.label,
    this.activeIcon,
  });
}
