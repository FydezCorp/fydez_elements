import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/const/constants.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/slider/data/slider_type.dart';
import 'package:fydez_elements/slider/slider_factory.dart';

import 'data/slider_item.dart';

class FySlider {
  static Widget create(
    BuildContext context, {
    SliderType? type,
    Key? key,
    required List<SliderItem> items,
    required bool isAutoPlay,
    bool hasIndicator = true,
    double aspectRatio = Constants.sliderDefaultAspectRatio,
    int delay = Constants.sliderDefaultDelay,
    double? cornerRadius,
    double margin = Constants.sliderDefaultMargin,
    CarouselController?
        controller, // TODO: We're using the one build-inside the carousel slider package for now, but we can implement our own if it's needed.
  }) {
    final finalType = type ?? SliderType.simple;
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return SliderFactory(type: finalType).build(
      key: key,
      items: items,
      delay: delay,
      margin: margin,
      isAutoPlay: isAutoPlay,
      aspectRatio: aspectRatio,
      cornerRadius: finalCornerRadius,
      hasIndicator: hasIndicator,
      controller: controller,
    );
  }
}
