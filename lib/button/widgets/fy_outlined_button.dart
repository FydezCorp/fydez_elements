import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class FyOutlinedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;
  const FyOutlinedButton({
    required this.title,
    required this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.fyParameters.buttonCornerRadius,
          ),
        ),
      ),
      child: icon == null
          ? Text(title)
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon),
                const SizedBox(width: 10),
                Text(title),
              ],
            ),
    );
  }
}