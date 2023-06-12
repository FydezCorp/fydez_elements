import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class ProductListViewDemo extends StatefulWidget {
  const ProductListViewDemo({
    super.key,
  });

  @override
  State<ProductListViewDemo> createState() => _ProductListViewDemoState();
}

class _ProductListViewDemoState extends State<ProductListViewDemo> {
  ProductListViewType type = ProductListViewType.simple;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Product List View Block'),
        DropdownButton<ProductListViewType>(
          items: ProductListViewType.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              type = value!;
            });
          },
          value: type,
        ),
        const Gap(20.0),
        FyProductListViewBlock.create(
          products: SampleProduct.mockProducts(),
          type: type,
          onProductTapped: (product) {
            log(product.id.toString());
          },
          title: 'Sample products',
          remainingSeconds: 100,
          cta: CTA(
            name: 'View all',
            action: () {},
          ),
        ),
      ],
    );
  }
}
