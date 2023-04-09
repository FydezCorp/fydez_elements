import 'package:flutter/material.dart';

class NavBarMainTitleIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  const NavBarMainTitleIcon({
    required this.icon,
    required this.label,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Text(
            '. $label',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          )
        : Icon(icon);
  }
}
