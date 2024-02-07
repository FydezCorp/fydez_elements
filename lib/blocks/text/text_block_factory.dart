import 'package:flutter/widgets.dart';
import 'package:fydez_elements/blocks/text/data/text_block_type.dart';
import 'package:fydez_elements/blocks/text/impls/normal_text_factory.dart';

abstract class TextFactory {
  Widget create(
    BuildContext context, {
    required String title,
    required String description,
  });

  factory TextFactory({required TextBlockType type}) {
    return NormalTextFactory();
  }
}
