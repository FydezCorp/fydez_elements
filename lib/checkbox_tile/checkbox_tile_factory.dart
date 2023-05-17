import 'package:flutter/material.dart';
import 'package:fydez_elements/checkbox_tile/data/checkbox_tile_type.dart';

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
