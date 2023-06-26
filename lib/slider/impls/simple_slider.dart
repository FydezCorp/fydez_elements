import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/slider_item.dart';
import '../slider_factory.dart';

class SimpleSlider implements SliderFactory {
  @override
  Widget build({
    Key? key,
    required List<SliderItem> items,
    required double aspectRatio,
    required int delay,
    required double cornerRadius,
    required double margin,
    required bool isAutoPlay,
    required bool hasIndicator,
  }) {
    return _SimpleSliderImpl(
      items: items,
      aspectRatio: aspectRatio,
      cornerRadius: cornerRadius,
      delay: delay,
      margin: margin,
      isAutoPlay: isAutoPlay,
      hasIndicator: hasIndicator,
    );
  }
}

class _SimpleSliderImpl extends StatefulWidget {
  final List<SliderItem> items;
  final double aspectRatio;
  final int delay;
  final double cornerRadius;
  final double margin;
  final bool isAutoPlay;
  final bool hasIndicator;

  const _SimpleSliderImpl({
    required this.items,
    required this.aspectRatio,
    required this.cornerRadius,
    required this.margin,
    required this.delay,
    required this.isAutoPlay,
    required this.hasIndicator,
  });

  @override
  State<_SimpleSliderImpl> createState() => _SimpleSliderImplState();
}

class _SimpleSliderImplState extends State<_SimpleSliderImpl> {
  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];
        return GestureDetector(
          onTap: item.cta.action,
          child: Container(
            margin: EdgeInsets.all(widget.margin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.cornerRadius),
              image: DecorationImage(
                image: CachedNetworkImageProvider(item.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: widget.isAutoPlay,
        aspectRatio: widget.aspectRatio,
        viewportFraction: 1.0,
        autoPlayInterval: Duration(milliseconds: widget.delay),
      ),
    );
  }
}
