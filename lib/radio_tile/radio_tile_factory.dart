import 'package:flutter/material.dart';
import 'package:fydez_elements/radio_tile/data/radio_tile_type.dart';

import 'impls/normal_radio_tile.dart';

abstract class RadioTileFactory<T> {
  Widget build({
    Key? key,
    required String title,
    required String? subtitle,
    required T groupValue,
    required T value,
    required void Function(T?) onChanged,
  });

  factory RadioTileFactory({required RadioTileType type}) {
    return NormalRadioTile();
  }
}
