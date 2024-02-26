import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';

import '../data/slider_item.dart';
import '../slider_factory.dart';

class CarrouselSlider implements SliderFactory {
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
    required CarouselController? controller,
  }) {
    return _CarrouselSliderImpl(
      items: items,
      aspectRatio: aspectRatio,
      cornerRadius: cornerRadius,
      delay: delay,
      margin: margin,
      isAutoPlay: isAutoPlay,
      hasIndicator: hasIndicator,
      controller: controller,
    );
  }
}

class _CarrouselSliderImpl extends StatefulWidget {
  final List<SliderItem> items;
  final double aspectRatio;
  final int delay;
  final double cornerRadius;
  final double margin;
  final bool isAutoPlay;
  final bool hasIndicator;
  final CarouselController? controller;
  const _CarrouselSliderImpl({
    required this.items,
    required this.aspectRatio,
    required this.cornerRadius,
    required this.margin,
    required this.delay,
    required this.isAutoPlay,
    required this.hasIndicator,
    required this.controller,
  });

  @override
  State<_CarrouselSliderImpl> createState() => _CarrouselSliderImplState();
}

class _CarrouselSliderImplState extends State<_CarrouselSliderImpl> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    return Column(
      children: [
        CarouselSlider.builder(
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
            viewportFraction: 0.75,
            autoPlayInterval: Duration(milliseconds: widget.delay),
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          carouselController: widget.controller,
        ),
        Visibility(
            visible: widget.hasIndicator,
            child: Column(
              children: [
                const Gap(10.0),
                SliderIndexIndicator(
                  currentIndex: currentIndex,
                  itemCount: widget.items.length,
                )
              ],
            ))
      ],
    );
  }
}

class SliderIndexIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  const SliderIndexIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.5,
      child: ListView.separated(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 7.5,
            height: 7.5,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? context.fyColors.textSixColor
                  : context.fyColors.textSixColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(5.0);
        },
      ),
    );
  }
}
