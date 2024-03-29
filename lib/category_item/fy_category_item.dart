import 'package:flutter/material.dart';
import 'package:fydez_elements/category_item/category_item_factory.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import 'data/category_item_type.dart';

class FyCategoryItem {
  static Widget create(
    BuildContext context, {
    Key? key,
    required String name,
    required String imageUrl,
    double? cornerRadius,
    VoidCallback? onTap,
    CategoryItemType? type,
  }) {
    final finalType = type ?? context.fyParameters.categoryItemType;
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return CategoryItemFactory(type: finalType).build(
      key: key,
      name: name,
      imageUrl: imageUrl,
      cornerRadius: finalCornerRadius,
      onTap: onTap,
    );
  }
}
