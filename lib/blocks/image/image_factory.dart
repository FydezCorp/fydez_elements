import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'impls/normal_image_factory.dart';
import 'impls/shadow_image_factory.dart';

abstract class ImageFactory {
  Widget create(
    BuildContext context, {
    required String imageUrl,
    required double? aspectRatio,
    required CTA cta,
    required double cornerRadius,
  });

  factory ImageFactory({required ImageBlockType type}) {
    switch (type) {
      case ImageBlockType.shadow:
        return ShadowImageFactory();
      case ImageBlockType.normal:
        return NormalImageFactory();
    }
  }
}
