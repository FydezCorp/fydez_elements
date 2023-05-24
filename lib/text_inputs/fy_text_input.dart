import 'package:flutter/material.dart';
import 'package:fydez_elements/text_inputs/text_input_factory.dart';

import 'data/input_mode.dart';
import 'data/text_input_type.dart';

class FyTextInput {
  static Widget create(
    BuildContext context, {
    FyInputType? type,
    Key? key,
    InputMode? mode,
    required TextEditingController controller,
    required String label,
    required String hint,
    String? Function(String? text)? validator,
    TextInputType? keyboardType,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    bool? enabled,
    void Function()? onEditingComplete,
    void Function(String text)? onFieldSubmitted,
    void Function()? onTap,
  }) {
    final finalType = type ?? FyInputType.A;
    return TextInputFactory(type: finalType).build(
      controller: controller,
      label: label,
      hint: hint,
      enabled: enabled,
      focusNode: focusNode,
      keyboardType: keyboardType,
      mode: mode,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      textInputAction: textInputAction,
      validator: validator,
      key: key,
    );
  }
}
