import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class OutlinedDropdownButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final double cornerRadius;
  const OutlinedDropdownButtonWidget({
    super.key,
    required this.child,
    required this.onTap,
    required this.cornerRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onTap,
        splashColor: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(cornerRadius),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: context.fyColors.textFiveColor),
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: child,
        ),
      ),
    );
  }
}
