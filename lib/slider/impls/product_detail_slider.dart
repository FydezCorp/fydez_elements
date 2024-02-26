import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';

import '../data/slider_item.dart';
import '../slider_factory.dart';

class ProductDetailSlider implements SliderFactory {
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
    return _ProductDetailSliderImpl(
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

class _ProductDetailSliderImpl extends StatefulWidget {
  final List<SliderItem> items;
  final double aspectRatio;
  final int delay;
  final double cornerRadius;
  final double margin;
  final bool isAutoPlay;
  final bool hasIndicator;
  final CarouselController? controller;
  const _ProductDetailSliderImpl({
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
  State<_ProductDetailSliderImpl> createState() =>
      _ProductDetailSliderImplState();
}

class _ProductDetailSliderImplState extends State<_ProductDetailSliderImpl> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    return Stack(
      alignment: Alignment.bottomCenter,
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
            viewportFraction: 1.0,
            autoPlayInterval: Duration(milliseconds: widget.delay),
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
                ProductDetailSliderIndexIndicator(
                  currentIndex: currentIndex,
                  itemCount: widget.items.length,
                ),
                const Gap(10.0),
              ],
            ))
      ],
    );
  }
}

class ProductDetailSliderIndexIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  const ProductDetailSliderIndexIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      child: ListView.separated(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          bool isSelected = currentIndex == index;
          return Container(
            width: isSelected ? 28 : 16,
            decoration: BoxDecoration(
                color: isSelected
                    ? context.fyColors.textOneColor
                    : context.fyColors.textOneColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(7.5)),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(5.0);
        },
      ),
    );
  }
}
