import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/countdown/countdown_factory.dart';
import 'package:fydez_elements/blocks/countdown/data/countdown_type.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class FyCountdownBlock {
  static Widget create(
    BuildContext context, {
    required int remainingSeconds,
    required String headline,
    required Color color,
    double? cornerRadius,
    required CountdownType type,
  }) {
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return CountdownFactory(type: type).create(
      remainingSeconds: remainingSeconds,
      cornerRadius: finalCornerRadius,
      headline: headline,
      color: color,
    );
  }
}
