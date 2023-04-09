import 'package:flutter/material.dart';

class BaseShadowContainer extends StatelessWidget {
  final double cornerRadius;
  final Widget child;
  const BaseShadowContainer({
    required this.child,
    required this.cornerRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double margin() {
      return cornerRadius == 0 ? 0 : 12.0;
    }

    return Container(
      margin: EdgeInsets.all(margin()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
        child: child,
      ),
    );
  }
}
