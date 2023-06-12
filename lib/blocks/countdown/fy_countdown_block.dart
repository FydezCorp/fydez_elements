import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/countdown/countdown_factory.dart';
import 'package:fydez_elements/blocks/countdown/data/countdown_type.dart';

class FyCountdownBlock {
  static Widget create({
    required int remainingSeconds,
    required String headline,
    required Color color,
    required double cornerRadius,
    required CountdownType type,
  }) {
    return CountdownFactory(type: type).create(
      remainingSeconds: remainingSeconds,
      cornerRadius: cornerRadius,
      headline: headline,
      color: color,
    );
  }
}
