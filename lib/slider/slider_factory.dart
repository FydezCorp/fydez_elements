import 'package:flutter/widgets.dart';
import 'package:fydez_elements/slider/data/slider_item.dart';
import 'package:fydez_elements/slider/data/slider_type.dart';
import 'package:fydez_elements/slider/impls/simple_slider.dart';

abstract class SliderFactory {
  Widget build({
    Key? key,
    required List<SliderItem> items,
    required double aspectRatio,
    required int delay,
    required double cornerRadius,
    required double margin,
  });

  factory SliderFactory({SliderType? type}) {
    // TODO: Add a switch case after getting some more designs!
    return SimpleSlider();
  }
}
