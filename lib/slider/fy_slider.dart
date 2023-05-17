import 'package:flutter/material.dart';
import 'package:fydez_elements/slider/data/slider_type.dart';
import 'package:fydez_elements/slider/slider_factory.dart';

import 'data/slider_item.dart';

class FySlider {
  static Widget create({
    SliderType? type,
    required List<SliderItem> items,
    double aspectRatio = 16 / 9,
  }) {
    return SliderFactory(type: type).build(
      items: items,
      aspectRatio: aspectRatio,
    );
  }
}
