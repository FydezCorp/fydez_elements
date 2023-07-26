import 'package:flutter/material.dart';

import 'data/countdown_with_background_type.dart';
import 'impls/simple_countdown_with_background.dart';

abstract class CountdownWithBackgroundFactory {
  Widget create({
    required int remainingSeconds,
    required String headline,
    required Color color,
    required double cornerRadius,
    required String backgroundImage,
  });
  factory CountdownWithBackgroundFactory({
    required CountdownWithBackgroundType type,
  }) {
    switch (type) {
      case CountdownWithBackgroundType.simple:
        return SimpleCountdownWithBackground();
    }
  }
}
