import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/image/image_factory.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyImageBlock {
  static Widget create(
    BuildContext context, {
    required String imageUrl,
    double? aspectRatio,
    required CTA cta,
    required double cornerRadius,
    required ImageBlockType type,
  }) {
    return ImageFactory(type: type).create(
      context,
      cta: cta,
      imageUrl: imageUrl,
      aspectRatio: aspectRatio,
      cornerRadius: cornerRadius,
    );
  }
}
