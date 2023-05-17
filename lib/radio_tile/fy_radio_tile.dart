import 'package:flutter/material.dart';
import 'package:fydez_elements/radio_tile/radio_tile_factory.dart';

import 'data/radio_tile_type.dart';

class FyRadioTile {
  static Widget create<T>(
    BuildContext context, {
    Key? key,
    required String title,
    String? subtitle,
    required T groupValue,
    required T value,
    required void Function(T?) onChanged,
    RadioTileType? type,
  }) {
    final finalType = type ?? RadioTileType.normal;
    return RadioTileFactory<T>(type: finalType).build(
      key: key,
      title: title,
      subtitle: subtitle,
      groupValue: groupValue,
      value: value,
      onChanged: onChanged,
    );
  }
}
