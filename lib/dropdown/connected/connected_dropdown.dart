import 'package:flutter/material.dart';

import '../data/fy_dropdown_item.dart';
import '../dropdown_factory.dart';
import 'connected_dropdown_widget.dart';

class ConnectedDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return ConnectedDropdownWidget(
      items: items,
      onChange: onChange,
      value: value,
      cornerRadius: cornerRadius,
    );
  }
}