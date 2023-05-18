import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';


class FyIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const FyIcon(this.icon, {super.key, this.size = 24, this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color ?? context.fyColors.textEightColor,
    );
  }
}
