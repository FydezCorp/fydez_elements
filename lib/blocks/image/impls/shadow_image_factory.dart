import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../../fydez_elements.dart';
import '../image_factory.dart';

class ShadowImageFactory implements ImageFactory {
  @override
  Widget create(
    BuildContext context, {
    required String imageUrl,
    required double aspectRatio,
    required CTA cta,
    required double cornerRadius,
  }) {
    return ShadowImageFactoryWidget(
      imageUrl: imageUrl,
      aspectRatio: aspectRatio,
      cta: cta,
      cornerRadius: cornerRadius,
    );
  }
}

class ShadowImageFactoryWidget extends StatelessWidget {
  final String imageUrl;
  final double aspectRatio;
  final CTA cta;
  final double cornerRadius;
  const ShadowImageFactoryWidget({
    Key? key,
    required this.imageUrl,
    required this.aspectRatio,
    required this.cornerRadius,
    required this.cta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
        child: InkWell(
      onTap: cta.action,
      borderRadius: BorderRadius.circular(cornerRadius),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: CachedNetworkImageProvider(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(cornerRadius),
            boxShadow: [
              BoxShadow(
                color: context.fyColors.textTwoColor,
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
