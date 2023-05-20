import 'package:flutter/material.dart';

import 'data/market_item_type.dart';
import 'impls/normal_market_item.dart';

abstract class MarketItemFactory {
  Widget build({
    Key? key,
    required String distance,
    required bool isFindInApp,
    required String name,
    required String imageUrl,
    required String address,
    required bool availability,
    required VoidCallback? onTap,
    required double borderRadius,
  });
  factory MarketItemFactory({required MarketItemType type}) {
    return NormalStoreItem();
  }
}
