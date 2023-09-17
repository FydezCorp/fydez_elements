import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'impls/A/text_input_a.dart';
import 'impls/B (old C)/text_input_c.dart';
import 'impls/C (old E)/text_input_e.dart';
import 'impls/D/text_input_d.dart';
import 'impls/E (old B)/text_input_b.dart';

abstract class TextInputFactory {
  Widget build({
    Key? key,
    InputMode? mode,
    required double cornerRadius,
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
    switch (type) {
      case FyInputType.A:
        return TextInputA();
      case FyInputType.B:
        return TextInputB();
      case FyInputType.C:
        return TextInputC();
      case FyInputType.D:
        return TextInputD();
      case FyInputType.E:
        return TextInputE();
    }
  }
}
