import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../fydez_elements.dart';

class ProductCardBackground extends StatelessWidget {
  final ProductImageBackgroundType imageBackgroundType;
  final double cornerRadius;
  final Widget child;

  const ProductCardBackground({
    required this.imageBackgroundType,
    required this.cornerRadius,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (imageBackgroundType) {
      case ProductImageBackgroundType.white:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: context.fyColors.textThreeColor),
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cornerRadius),
            child: child,
          ),
        );
      case ProductImageBackgroundType.grey:
        return Container(
          decoration: BoxDecoration(
            // border: Border.all(color: context.fyColors.textThreeColor),
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cornerRadius),
            child: child,
          ),
        );
      case ProductImageBackgroundType.picture:
        return Container(
          decoration: BoxDecoration(
            // border: Border.all(color: context.fyColors.textThreeColor),
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cornerRadius),
            child: child,
          ),
        );
      case ProductImageBackgroundType.shadow:
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: context.fyColors.textTwoColor,
                blurRadius: 10,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cornerRadius),
            child: child,
          ),
        );
      default:
        return Container();
    }
  }
}
