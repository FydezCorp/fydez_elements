import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/price_ext.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/image/fy_network_image.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../cart_item_factory.dart';

class NormalCategoryItem implements CartItemFactory {
  @override
  Widget build({
    Key? key,
    required VoidCallback onDelete,
    required VoidCallback onAdd,
    required VoidCallback onFraction,
    required String productImage,
    required String productTitle,
    required double productPrice,
    required String categoryName,
    required int count,
  }) {
    return NormalCartItemWidget(
      productImage: productImage,
      productTitle: productTitle,
      productPrice: productPrice,
      count: count,
      categoryName: categoryName,
      onDelete: onDelete,
      onAdd: onAdd,
      onFraction: onFraction,
      key: key,
    );
  }
}

class NormalCartItemWidget extends StatelessWidget {
  final VoidCallback onDelete;
  final VoidCallback onAdd;
  final VoidCallback onFraction;
  final String productImage;
  final String productTitle;
  final double productPrice;
  final String categoryName;
  final int count;

  const NormalCartItemWidget({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
    required this.count,
    required this.categoryName,
    required this.onDelete,
    required this.onAdd,
    required this.onFraction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: context.fyColors.textTwoColor),
      )),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              color: context.fyColors.textOneColor,
              child: FyNetworkImage(
                url: productImage,
                width: 85,
                height: 85,
              ),
            ),
            const Gap(16),
            Expanded(
                child: SizedBox(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    productTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    categoryName,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: context.fyColors.textSixColor),
                  ),
                  // ? TODO: WTF are these?
                  Text(
                    'Size 6',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: context.fyColors.textSixColor),
                  ),
                  const Gap(4),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(3)),
                  ),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CounterWidget(
                          count: count,
                          onAdd: onAdd,
                          onFraction: onFraction,
                          onDelete: onDelete),
                      Text(
                        (productPrice * count).toPrice(),
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final int count;
  final VoidCallback onAdd;
  final VoidCallback onFraction;
  final VoidCallback onDelete;
  const CounterWidget({
    super.key,
    required this.count,
    required this.onAdd,
    required this.onFraction,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Visibility(
          visible: count == 1,
          child: GestureDetector(
            onTap: onDelete,
            child: Icon(
              Iconsax.trash,
              size: 20,
              color: context.fyColors.textEightColor,
            ),
          ),
        ),
        Visibility(
          visible: count != 1,
          child: GestureDetector(
            onTap: onFraction,
            child: Icon(
              Iconsax.minus_cirlce,
              size: 20,
              color: context.fyColors.textEightColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: context.fyColors.textSixColor,
                ),
          ),
        ),
        GestureDetector(
          onTap: onAdd,
          child: Icon(
            Iconsax.add_circle,
            size: 20,
            color: context.fyColors.textEightColor,
          ),
        ),
      ],
    );
  }
}
