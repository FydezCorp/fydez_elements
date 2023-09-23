import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/countdown_with_background/countdown_with_background_factory.dart';

import 'data/countdown_with_background_type.dart';

class FyCountdownWithBackgroundBlock {
  static Widget create({
    required int remainingSeconds,
    required String headline,
    required Color color,
    required double cornerRadius,
    required CountdownWithBackgroundType type,
    required String backgroundImage,
    VoidCallback? onTap,
  }) {
    return CountdownWithBackgroundFactory(type: type).create(
      remainingSeconds: remainingSeconds,
      cornerRadius: cornerRadius,
      backgroundImage: backgroundImage,
      headline: headline,
      color: color,
      onTap: onTap,
    );
  }
}
