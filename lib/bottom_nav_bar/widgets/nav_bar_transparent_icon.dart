import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class NavBarTransparentIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  const NavBarTransparentIcon({
    required this.icon,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: context.colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ))
        : Icon(icon);
  }
}
