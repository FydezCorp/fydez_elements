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
  }) {
    return NormalCollectionCarouselWidget(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: cornerRadius,
    );
  }
}

class NormalCollectionCarouselWidget extends StatelessWidget {
  final List<CollectionItem> items;
  final bool hasTitle;
  final double cornerRadius;
  const NormalCollectionCarouselWidget({
    Key? key,
    required this.hasTitle,
    required this.items,
    required this.cornerRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.separated(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            width: 175,
            height: 75,
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
                        color: Colors.white,
                      ),
                    ),
                  )
                : null,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
