import 'package:flutter/material.dart';

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
            decoration: const BoxDecoration(
              // TODO: Read these colors from theme.
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ))
        : Icon(icon);
  }
}
