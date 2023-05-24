import 'package:flutter/material.dart';

class ButtonLoadingWidget extends StatelessWidget {
  final double size;
  final Color color;
  const ButtonLoadingWidget({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: 1.5,
        ),
      ),
    );
  }
}
