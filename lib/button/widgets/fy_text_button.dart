import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class FyTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;
  const FyTextButton({
    required this.title,
    required this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
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
                Icon(icon, size: 18),
                const SizedBox(width: 5),
                Text(title),
              ],
            ),
    );
  }
}