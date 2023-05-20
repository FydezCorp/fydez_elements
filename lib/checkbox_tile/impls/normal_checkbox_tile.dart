import 'package:flutter/material.dart';

import '../checkbox_tile_factory.dart';

class NormalCheckboxTile implements CheckboxTileFactory {
  @override
  Widget build({
    Key? key,
    required String title,
    String? subtitle,
    required bool value,
    required void Function(bool? p1) onChanged,
  }) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
    );
  }
}
