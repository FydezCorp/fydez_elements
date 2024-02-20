import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/blog/blog_factory.dart';
import 'package:fydez_elements/blocks/blog/data/blog_content.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class CarouselBlogFactory implements BlogFactory {
  @override
  Widget create(
    BuildContext context, {
    required List<BlogContent> contents,
    String? headline,
  }) {
    return _CarouselBlogFactoryWidget(
      contents: contents,
      headline: headline,
    );
  }
}

class _CarouselBlogFactoryWidget extends StatelessWidget {
  final List<BlogContent> contents;
  final String? headline;
  const _CarouselBlogFactoryWidget({
    required this.contents,
    required this.headline,
  });

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
            visible: headline != null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Text(
                    headline ?? '',
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
          height: 320,
          child: ListView.builder(
            itemCount: contents.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = contents[index];
              return GestureDetector(
                onTap: () {
                  // onCollectionTapped(item.id);
                },
                child: Container(
                  width: 200,
                  // height: 75,
                  margin: EdgeInsets.only(
                    left:
                        index == 0 ? horizontalPadding : horizontalPadding / 2,
                    right: index != contents.length - 1 ? 0 : horizontalPadding,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      context.fySpacing.cornerRadius.toDouble(),
                    ),
                    color: context.colorScheme.primary,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(item.imageURL),
                      fit: BoxFit.fitHeight,
                      opacity: 1,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      item.title,
                      textAlign: TextAlign.center,
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
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
