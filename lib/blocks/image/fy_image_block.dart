import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/image/image_factory.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyImageBlock {
  static Widget create(
    BuildContext context, {
    required String imageUrl,
    double? aspectRatio,
    required CTA cta,
    double? cornerRadius,
    required ImageBlockType type,
  }) {
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return ImageFactory(type: type).create(
      context,
      cta: cta,
      imageUrl: imageUrl,
      aspectRatio: aspectRatio,
      cornerRadius: finalCornerRadius,
    );
  }
}
