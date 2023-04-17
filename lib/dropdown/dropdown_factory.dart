import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'connected/connected_dropdown.dart';

abstract class DropdownFactory<T> {
  Widget createDropDown(
    BuildContext context, {
    required T value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  });

  factory DropdownFactory(DropdownType type) {
    switch (type) {
      case DropdownType.connected:
        return ConnectedDropdown<T>();
      case DropdownType.disconnected:
        return DisconnectedDropdown<T>();
      case DropdownType.modal:
        return ModalDropdown<T>();
    }
  }
}

class DisconnectedDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return Container();
  }
}

class ModalDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return Container();
  }
}
