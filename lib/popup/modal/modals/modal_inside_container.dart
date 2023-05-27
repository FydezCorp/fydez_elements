import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class ModalInsideContainer extends StatelessWidget {
  const ModalInsideContainer({
    Key? key,
    required this.cornerRadius,
    required this.child,
  }) : super(key: key);

  final double cornerRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(cornerRadius),
          topLeft: Radius.circular(cornerRadius),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 38,
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: ShapeDecoration(
              color: context.fyColors.textFiveColor,
              shape: const StadiumBorder(),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
