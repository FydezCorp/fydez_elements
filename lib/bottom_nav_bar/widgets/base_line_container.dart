import 'package:flutter/material.dart';

class BaseLineContainer extends StatelessWidget {
  final double cornerRadius;
  final Widget child;
  const BaseLineContainer({
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
          border: Border.all(color: const Color(0xffCCCCCC), width: 0.5)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
        child: child,
      ),
    );
  }
}
