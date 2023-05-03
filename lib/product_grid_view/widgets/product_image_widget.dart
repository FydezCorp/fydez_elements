import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/const/constants.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../general_data/base_product.dart';
import '../../image/fy_network_image.dart';
import '../data/product_image_background_type.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    Key? key,
    required this.product,
    required this.imageBackgroundType,
  }) : super(key: key);

  final BaseProduct product;
  final ProductImageBackgroundType imageBackgroundType;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor() {
      switch (imageBackgroundType) {
        case ProductImageBackgroundType.white:
          // TODO: What is the equivalent of Colors.white in theme?
          return Colors.white;
        case ProductImageBackgroundType.shadow:
          return Colors.white;
        case ProductImageBackgroundType.picture:
          return Colors.white;
        default:
          return context.fyColors.textTwoColor;
      }
    }

    return Container(
      height: Constants.productCardImageHeight,
      decoration: BoxDecoration(
        color: backgroundColor(),
        image: imageBackgroundType == ProductImageBackgroundType.picture
            ? DecorationImage(
                image: CachedNetworkImageProvider(
                  product.image,
                ),
                fit: BoxFit.cover,
              )
            : null,
      ),
      padding: const EdgeInsets.all(20.0),
      child: imageBackgroundType == ProductImageBackgroundType.picture
          ? Container()
          : FyNetworkImage(url: product.image),
    );
  }
}
