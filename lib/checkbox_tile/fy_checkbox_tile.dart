import 'package:flutter/material.dart';
import 'package:fydez_elements/checkbox_tile/checkbox_tile_factory.dart';

import 'data/checkbox_tile_type.dart';

class FyCheckboxTile {
  static Widget create(
    BuildContext context, {
    Key? key,
    required String title,
    String? subtitle,
    required bool value,
    required void Function(bool?) onChanged,
    CheckboxTileType? type,
  }) {
    final finalType = type ?? CheckboxTileType.normal;
    return CheckboxTileFactory(type: finalType).build(
      title: title,
      subtitle: subtitle,
      value: value,
      onChanged: onChanged,
      key: key,
    );
  }
}
