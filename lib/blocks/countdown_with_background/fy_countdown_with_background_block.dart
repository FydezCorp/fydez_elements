import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/countdown_with_background/countdown_with_background_factory.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import 'data/countdown_with_background_type.dart';

class FyCountdownWithBackgroundBlock {
  static Widget create(
    BuildContext context, {
    required int remainingSeconds,
    required String headline,
    required Color color,
    double? cornerRadius,
    required CountdownWithBackgroundType type,
    required String backgroundImage,
    VoidCallback? onTap,
  }) {
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return CountdownWithBackgroundFactory(type: type).create(
      remainingSeconds: remainingSeconds,
      cornerRadius: finalCornerRadius,
      backgroundImage: backgroundImage,
      headline: headline,
      color: color,
      onTap: onTap,
    );
  }
}
