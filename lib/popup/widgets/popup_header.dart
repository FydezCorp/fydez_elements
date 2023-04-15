import 'package:flutter/material.dart';

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
          style: const TextStyle(
            color: Color(0xff585858),
            fontSize: 20,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Color(0xff949494),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
