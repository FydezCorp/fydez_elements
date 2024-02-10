import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class FyNetworkImage extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  const FyNetworkImage({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: url,
      fit: fit,
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              value: progress.progress,
              color: context.fyColors.textFourColor,
            ),
          ),
        );
      },
    );
  }
}
