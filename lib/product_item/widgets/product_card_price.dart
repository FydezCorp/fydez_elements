import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class ProductCardPrice extends StatelessWidget {
  const ProductCardPrice({
    Key? key,
    required this.product,

  }) : super(key: key);

  final BaseProduct product;

  bool get areEqual => product.price == product.finalPrice;

  @override
  Widget build(BuildContext context) {
    return areEqual
        ? Text(
            product.price,
            style: context.textTheme.labelSmall!.copyWith(
              color: context.fyColors.textSevenColor,
            ),
          )
        : Row(
            children: [
              Text(
                product.price,
                style: context.textTheme.labelSmall!.copyWith(
                  color: context.fyColors.textSixColor,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                product.finalPrice,
                style: context.textTheme.labelSmall!.copyWith(
                  color: context.fyColors.textSevenColor,
                ),
              )
            ],
          );
  }
}
