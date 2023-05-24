import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

part 'input_type.dart';
part 'long_text_input.dart';
part 'numeric_text_input.dart';
part 'secure_text_input.dart';
part 'simple_text_input.dart';

class FyTextInput extends StatelessWidget {
  /// Creates a Text Input Widget ([TextFormField])
  ///
  /// All the fields are same as [TextFormField] except 'type' parameter which
  /// takes an enum of [InputType] which defaults to [InputType.simple].
  const FyTextInput({
    Key? key,

    /// Defaults to [InputType.simple].
    this.type,
    required this.controller,
    this.keyboardType,
    required this.label,
    required this.hint,
    this.validator,
    this.focusNode,
    this.textInputAction,
    this.enabled,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTap,
  }) : super(key: key);
  final InputType? type;
  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case InputType.simple:
        return _SimpleTextInput(
          controller: controller,
          label: label,
          hint: hint,
          validator: validator,
          keyboardType: keyboardType,
          focusNode: focusNode,
          textInputAction: textInputAction,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
        );
      case InputType.numeric:
        return _NumericTextInput(
          controller: controller,
          label: label,
          hint: hint,
          keyboardType: keyboardType,
          validator: validator,
          focusNode: focusNode,
          textInputAction: textInputAction,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
        );
      case InputType.long:
        return _LongTextInput(
          controller: controller,
          label: label,
          hint: hint,
          keyboardType: keyboardType,
          validator: validator,
          focusNode: focusNode,
          textInputAction: textInputAction,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
        );
      case InputType.secure:
        return _SecureTextInput(
          controller: controller,
          label: label,
          hint: hint,
          keyboardType: keyboardType,
          validator: validator,
          focusNode: focusNode,
          textInputAction: textInputAction,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
        );
      default:
        return _SimpleTextInput(
          controller: controller,
          label: label,
          hint: hint,
          keyboardType: keyboardType,
          validator: validator,
          focusNode: focusNode,
          textInputAction: textInputAction,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
        );
    }
  }
}
