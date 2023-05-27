import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/dropdown/dropdown_factory.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyDropdown {
  static Widget showSimpleDropdown<T>(
    BuildContext context, {
    DropdownType? type,
    double? cornerRadius,
    required T value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
  }) {
    final dropdownType =
        type ?? context.fyParameters.dropdownConfiguration.type;
    final finalCornerRadius =
        cornerRadius ?? context.fyParameters.dropdownConfiguration.cornerRadius;
    return DropdownFactory<T>(
      dropdownType,
    ).createDropDown(
      context,
      value: value,
      items: items,
      onChange: onChange,
      cornerRadius: finalCornerRadius,
    );
  }
}
