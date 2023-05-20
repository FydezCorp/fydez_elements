import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
