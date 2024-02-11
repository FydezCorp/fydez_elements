import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'product_card_price.dart';

class ProductCardDetails extends StatelessWidget {
  const ProductCardDetails({
    Key? key,
    required this.product,
    required this.type,
  }) : super(key: key);

  final BaseProduct product;
  final ProductCardType type;

  EdgeInsets get padding => type == ProductCardType.A
      ? const EdgeInsets.only(top: 10)
      : const EdgeInsets.all(10.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: context.textTheme.labelLarge!.copyWith(
              color: context.fyColors.textTenColor,
            ),
          ),
          const SizedBox(height: 5),
          ProductCardPrice(
            product: product,
          ),
          const SizedBox(height: 5),
          product.variations != null
              ? Row(
                  children: [
                    ...product.variations!
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 5,
                            ),
                            child: e.representative,
                          ),
                        )
                        .toList(),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
