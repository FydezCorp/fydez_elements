import 'package:flutter/material.dart';

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
  }) {
    return MaterialDropdownWidget(
      items: items,
      onChange: onChange,
      value: value,
      cornerRadius: cornerRadius,
    );
  }
}