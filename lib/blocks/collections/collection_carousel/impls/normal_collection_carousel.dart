import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../../../fydez_elements.dart';
import '../collection_carousel_factory.dart';

class NormalCollectionCarousel implements CollectionCarouselFactory {
  @override
  Widget create({
    required List<CollectionItem> items,
    required bool hasTitle,
    required double cornerRadius,
    required Function(int id) onCollectionTapped,
    required String? title,
  }) {
    return NormalCollectionCarouselWidget(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: cornerRadius,
      onCollectionTapped: onCollectionTapped,
      title: title,
    );
  }
}

class NormalCollectionCarouselWidget extends StatelessWidget {
  final List<CollectionItem> items;
  final bool hasTitle;
  final double cornerRadius;
  final Function(int id) onCollectionTapped;
  final String? title;
  const NormalCollectionCarouselWidget({
    Key? key,
    required this.hasTitle,
    required this.items,
    required this.cornerRadius,
    required this.onCollectionTapped,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.fySpacing.rightLeftPadding.toDouble();
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            // vertical: context.fySpacing.topBottomPadding.toDouble(),
            horizontal: horizontalPadding,
          ),
          child: Visibility(
            visible: title != null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Text(
                    title ?? '',
                    style: context.textTheme.titleLarge!.copyWith(
                      color: context.fyColors.titleColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 75,
          child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () {
                  onCollectionTapped(item.id);
                },
                child: Container(
                  width: 175,
                  height: 75,
                  margin: EdgeInsets.only(
                    left:
                        index == 0 ? horizontalPadding : horizontalPadding / 2,
                    right: index != items.length - 1 ? 0 : horizontalPadding,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(cornerRadius),
                    color: context.colorScheme.primary,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(item.imageUrl),
                      fit: BoxFit.cover,
                      opacity: hasTitle ? 0.5 : 1,
                    ),
                  ),
                  child: hasTitle
                      ? Center(
                          child: Text(
                            item.title,
                            style: context.textTheme.titleMedium!.copyWith(
                              color: context.colorScheme.onPrimary,
                              shadows: [
                                Shadow(
                                  color: context.fyColors.textTenColor,
                                  blurRadius: 10.0,
                                ),
                              ],
                            ),
                          ),
                        )
                      : null,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
