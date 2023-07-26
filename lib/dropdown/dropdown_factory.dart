import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'connected/connected_dropdown.dart';
import 'disconnected/disconnected_dropdown.dart';
import 'material/material_dropdown.dart';
import 'modal/modal_dropdown.dart';

abstract class DropdownFactory<T> {
  Widget createDropDown(
    BuildContext context, {
    required T value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
    required FyInputType textInputType,
  });

  factory DropdownFactory(DropdownType type) {
    switch (type) {
      case DropdownType.connected:
        return ConnectedDropdown<T>();
      case DropdownType.disconnected:
        return DisconnectedDropdown<T>();
      case DropdownType.modal:
        return ModalDropdown<T>();
      case DropdownType.material:
        return MaterialDropdown<T>();
    }
  }
}
