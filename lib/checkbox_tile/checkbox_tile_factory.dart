import 'package:flutter/material.dart';
import 'package:fydez_elements/checkbox_tile/data/checkbox_tile_type.dart';

import 'impls/normal_checkbox_tile.dart';

abstract class CheckboxTileFactory {
  Widget build({
    Key? key,
    required String title,
    String? subtitle,
    required bool value,
    required void Function(bool?) onChanged,
  });

  factory CheckboxTileFactory({required CheckboxTileType type}) {
    return NormalCheckboxTile();
  }
}

