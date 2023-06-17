import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/countdown/data/countdown_type.dart';

import 'impls/simple_countdown.dart';

abstract class CountdownFactory {
  Widget create({
    required int remainingSeconds,
    required String headline,
    required Color color,
    required double cornerRadius,
  });
  factory CountdownFactory({required CountdownType type}) {
    switch (type) {
      case CountdownType.simple:
        return SimpleCountdown();
    }
  }
}
