import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/blog/blog_factory.dart';
import 'package:fydez_elements/blocks/blog/data/blog_content.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../image/fy_network_image.dart';

class SwipeBlogFactory implements BlogFactory {
  @override
  Widget create(
    BuildContext context, {
    required List<BlogContent> contents,
    String? headline,
  }) {
    return _SwipeBlogFactoryWidget(
      contents: contents,
      headline: headline,
    );
  }
}

class _SwipeBlogFactoryWidget extends StatelessWidget {
  final List<BlogContent> contents;
  final String? headline;

  const _SwipeBlogFactoryWidget({
    required this.contents,
    required this.headline,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: headline != null,
          child: Column(
            children: [
              Text(
                headline!,
                style: context.textTheme.headlineLarge!.copyWith(
                  color: context.fyColors.titleColor,
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
        SizedBox(
          height: 210,
          child: Swiper(
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  if (!await launchUrl(Uri.parse(contents[index].postURL))) {
                    debugPrint('Can\'t open url: ${contents[index].postURL}');
                  }
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      context.fySpacing.cornerRadius.toDouble(),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      fit: StackFit.expand,
                      children: [
                        FyNetworkImage(
                          url: contents[index].imageURL,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width - 50,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              colors: [
                                // Colors.transparent,
                                Colors.transparent,
                                Colors.black
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  context.fySpacing.rightLeftPadding.toDouble(),
                              vertical:
                                  context.fySpacing.topBottomPadding.toDouble(),
                            ),
                            child: Center(
                              child: Text(
                                contents[index].title,
                                textAlign: TextAlign.center,
                                style: context.textTheme.titleMedium!.copyWith(
                                  color: context.colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              );
            },
            itemWidth: MediaQuery.of(context).size.width - 50,
            autoplay: true,
            duration: 2500,
            autoplayDelay: 5000,
            layout: SwiperLayout.STACK,
          ),
        ),
      ],
    );
  }
}
