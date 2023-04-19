import 'package:flutter/material.dart';

import '../data/fy_dropdown_item.dart';
import '../dropdown_factory.dart';
import 'modal_dropdown_widget.dart';

class ModalDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return ModalDropdownWidget(
      items: items,
      onChange: onChange,
      value: value,
      cornerRadius: cornerRadius,
    );
  }
}