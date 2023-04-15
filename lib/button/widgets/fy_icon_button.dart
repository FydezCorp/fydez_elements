import 'package:flutter/material.dart';

class FyIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const FyIconButton({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}