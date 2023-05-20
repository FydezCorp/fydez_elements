import 'package:flutter/material.dart';

import 'data/category_item_type.dart';
import 'impls/normal_category_item.dart';

abstract class CategoryItemFactory {
  Widget build({
    Key? key,
    required String name,
    required String imageUrl,
    required VoidCallback? onTap,
    required double cornerRadius,
  });

  factory CategoryItemFactory({required CategoryItemType type}) {
    return NormalCategoryItem();
  }
}
