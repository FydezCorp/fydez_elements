import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FyNetworkImage extends StatelessWidget {
  final String url;
  const FyNetworkImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
    );
  }
}
