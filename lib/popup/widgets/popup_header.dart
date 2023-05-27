import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class PopupHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const PopupHeader({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:  TextStyle(
            color: context.fyColors.textEightColor,
            fontSize: 20,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: context.fyColors.textSixColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
