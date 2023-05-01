import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/dropdown/dropdown_factory.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyDropdown {
  static Widget showSimpleDropdown<T>(
    BuildContext context, {
    DropdownType? type,
    required T value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    double cornerRadius = 16,
    DesignSystem? designSystem,
  }) {
    // TODO: Read it from context?
    final dropdownType = type ?? DropdownType.modal;
    return DropdownFactory<T>(
      dropdownType,
      designSystem: designSystem,
    ).createDropDown(
      context,
      value: value,
      items: items,
      onChange: onChange,
      cornerRadius: cornerRadius,
    );
  }
}
