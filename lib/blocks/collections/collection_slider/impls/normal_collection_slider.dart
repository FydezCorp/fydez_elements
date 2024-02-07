import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';

import '../../../../fydez_elements.dart';
import '../collection_slider_factory.dart';

class NormalCollectionSlider implements CollectionSliderFactory {
  @override
  Widget create({
    required List<CollectionItem> items,
    required bool hasTitle,
    required double cornerRadius,
    required Function(int id) onCollectionTapped,
  }) {
    return NormalCollectionSliderWidget(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: cornerRadius,
      onCollectionTapped: onCollectionTapped,
    );
  }
}

class NormalCollectionSliderWidget extends StatefulWidget {
  final List<CollectionItem> items;
  final bool hasTitle;
  final double cornerRadius;
  final Function(int id) onCollectionTapped;
  const NormalCollectionSliderWidget({
    Key? key,
    required this.hasTitle,
    required this.items,
    required this.cornerRadius,
    required this.onCollectionTapped,
  }) : super(key: key);

  @override
  State<NormalCollectionSliderWidget> createState() =>
      _NormalCollectionSliderWidgetState();
}

class _NormalCollectionSliderWidgetState
    extends State<NormalCollectionSliderWidget> {
  final _sliderController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: context.fySpacing.topBottomPadding.toDouble(),
        horizontal: context.fySpacing.rightLeftPadding.toDouble(),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(widget.cornerRadius),
            child: CarouselSlider.builder(
              carouselController: _sliderController,
              itemCount: widget.items.length,
              itemBuilder: (context, index, realIndex) {
                final item = widget.items[index];
                return Container(
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(item.imageUrl),
                      fit: BoxFit.cover,
                      opacity: widget.hasTitle ? 0.5 : 1.0,
                    ),
                  ),
                  child: widget.hasTitle
                      ? Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                item.title,
                                style:
                                    context.textTheme.headlineLarge!.copyWith(
                                  color: context.colorScheme.onPrimary,
                                  shadows: [
                                    Shadow(
                                      color: context.fyColors.textTenColor,
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(10.0),
                              OutlinedButton(
                                onPressed: () {
                                  widget.onCollectionTapped(item.id);
                                },
                                style: OutlinedButton.styleFrom(
                                  foregroundColor:
                                      context.colorScheme.onPrimary,
                                  side: BorderSide(
                                    color: context.colorScheme.onPrimary,
                                  ),
                                ),
                                child: const Text('Shop now'),
                              )
                            ],
                          ),
                        )
                      : null,
                );
              },
              options: CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOutExpo,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                onPageChanged: (index, reason) => setState(() {
                  currentIndex = index;
                }),
              ),
            ),
          ),
          Positioned(
              bottom: 10.0,
              child: SliderIndexIndicator(
                currentIndex: currentIndex,
                itemCount: widget.items.length,
              ))
        ],
      ),
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
                  ? context.colorScheme.onPrimary
                  : context.colorScheme.onPrimary.withOpacity(0.5),
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
