import 'package:flutter/material.dart';

import '../radio_tile_factory.dart';

class NormalRadioTile<T> implements RadioTileFactory<T> {
  @override
  Widget build({
    Key? key,
    required String title,
    String? subtitle,
    required T groupValue,
    required T value,
    required void Function(T?) onChanged,
  }) {
    return RadioListTile<T>(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
