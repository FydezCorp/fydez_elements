import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../../text_input_factory.dart';

part 'widgets/long_text_input.dart';
part 'widgets/numeric_text_input.dart';
part 'widgets/secure_text_input.dart';
part 'widgets/simple_text_input.dart';

class TextInputD implements TextInputFactory {
  @override
  Widget build({
    Key? key,
    InputMode? mode,
    required double cornerRadius,
    required TextEditingController controller,
    required String label,
    required String hint,
    String? Function(String? text)? validator,
    TextInputType? keyboardType,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    bool? enabled,
    void Function()? onEditingComplete,
    void Function(String p1)? onFieldSubmitted,
    void Function()? onTap,
  }) {
    return TextInputDWidget(
      mode: mode,
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
      cornerRadius: cornerRadius,
      key: key,
    );
  }
}

class TextInputDWidget extends StatelessWidget {
  /// Creates a Text Input Widget ([TextFormField])
  ///
  /// All the fields are same as [TextFormField] except 'type' parameter which
  /// takes an enum of [InputMode] which defaults to [InputMode.simple].
  const TextInputDWidget({
    Key? key,

    /// Defaults to [InputMode.simple].
    this.mode,
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
    required this.cornerRadius,
  }) : super(key: key);
  final InputMode? mode;
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
  final double cornerRadius;

  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case InputMode.simple:
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
          cornerRadius: cornerRadius,
        );
      case InputMode.numeric:
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
          cornerRadius: cornerRadius,
        );
      case InputMode.long:
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
          cornerRadius: cornerRadius,
        );
      case InputMode.secure:
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
          cornerRadius: cornerRadius,
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
          cornerRadius: cornerRadius,
        );
    }
  }
}
