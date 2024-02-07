import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/text/data/text_block_type.dart';
import 'package:fydez_elements/blocks/text/text_block_factory.dart';

class FyTextBlock {
  static Widget create(
    BuildContext context, {
    required String title,
    required String description,
    TextBlockType? type,
  }) {
    final finalType = type ?? TextBlockType.normal;
    return TextFactory(type: finalType).create(
      context,
      title: title,
      description: description,
    );
  }
}
