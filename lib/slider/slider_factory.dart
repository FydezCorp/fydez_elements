import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:fydez_elements/slider/data/slider_item.dart';
import 'package:fydez_elements/slider/data/slider_type.dart';
import 'package:fydez_elements/slider/impls/carousel_slider.dart';
import 'package:fydez_elements/slider/impls/product_detail_slider.dart';
import 'package:fydez_elements/slider/impls/simple_slider.dart';

abstract class SliderFactory {
  Widget build({
    Key? key,
    required List<SliderItem> items,
    required double aspectRatio,
    required int delay,
    required double cornerRadius,
    required double margin,
    required bool isAutoPlay,
    required bool hasIndicator,
    required CarouselController? controller,
  });

  factory SliderFactory({required SliderType type}) {
    switch (type) {
      case SliderType.simple:
        return SimpleSlider();
      case SliderType.carousel:
        return CarrouselSlider();
      case SliderType.productDetail:
        return ProductDetailSlider();
    }
  }
}
