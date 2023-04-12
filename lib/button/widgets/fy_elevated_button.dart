import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class FyElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;
  const FyElevatedButton({
    required this.title,
    required this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
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
