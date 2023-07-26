import 'package:flutter/material.dart';

import '../../text_inputs/data/text_input_type.dart';
import '../data/fy_dropdown_item.dart';
import '../dropdown_factory.dart';
import 'material_dropdown_widget.dart';

class MaterialDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
    required FyInputType textInputType,
  }) {
    return MaterialDropdownWidget(
      items: items,
      onChange: onChange,
      value: value,
      cornerRadius: cornerRadius,
      textInputType: textInputType,
    );
  }
}
