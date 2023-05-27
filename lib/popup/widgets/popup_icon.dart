import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class PopupIcon extends StatelessWidget {
  final IconData? icon;
  final bool hasIcon;
  const PopupIcon({
    required this.hasIcon,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: hasIcon
          ? Icon(
              icon,
              size: 80,
              color: context.fyColors.textEightColor,
            )
          : Container(),
    );
  }
}
