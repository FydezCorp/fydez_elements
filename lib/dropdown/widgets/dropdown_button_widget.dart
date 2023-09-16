import 'package:flutter/material.dart';
import 'package:fydez_elements/dropdown/widgets/impl/outlined_dropdown_button_widget.dart';

import '../../text_inputs/data/text_input_type.dart';
import 'impl/filled_dropdown_button_widget.dart';

class DropdownButtonWidget extends StatelessWidget {
  final FyInputType textInputType;
  final Widget child;
  final VoidCallback onTap;
  final double cornerRadius;
  const DropdownButtonWidget({
    super.key,
    required this.textInputType,
    required this.child,
    required this.onTap,
    required this.cornerRadius,
  });

  @override
  Widget build(BuildContext context) {
    switch (textInputType) {
      case FyInputType.A:
        return OutlinedDropdownButtonWidget(
          onTap: onTap,
          cornerRadius: cornerRadius,
          child: child,
        );

      case FyInputType.B:
        return FilledDropdownButtonWidget(
          onTap: onTap,
          cornerRadius: cornerRadius,
          child: child,
        );
      default:
        return OutlinedDropdownButtonWidget(
          onTap: onTap,
          cornerRadius: cornerRadius,
          child: child,
        );
    }
  }
}
