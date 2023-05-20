import 'package:flutter/material.dart';

import 'widgets/cart_item_skeleton.dart';
import 'widgets/category_item_skeleton.dart';

class FySkeletons {
  static Widget categoryItemSkeleton() {
    return const CategoryItemSkeleton();
  }

  static Widget cartItemSkeleton() {
    return const CartItemSkeleton();
  }
}
