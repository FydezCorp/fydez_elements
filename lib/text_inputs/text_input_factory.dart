import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'impls/A/text_input_a.dart';

abstract class TextInputFactory {
  Widget build({
    Key? key,
    InputMode? mode,
    required TextEditingController controller,
    required String label,
    required String hint,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    bool? enabled,
    void Function()? onEditingComplete,
    void Function(String)? onFieldSubmitted,
    void Function()? onTap,
  });

  factory TextInputFactory({required FyInputType type}) {
    return TextInputA();
  }
}
