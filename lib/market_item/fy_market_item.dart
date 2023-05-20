import 'package:flutter/material.dart';

import 'data/market_item_type.dart';
import 'market_item_factory.dart';

class FyMarketItem {
  static Widget create(
    BuildContext context, {
    Key? key,
    required String name,
    required String imageUrl,
    required String address,
    required String distance,
    required bool isFindInApp,
    required bool availability,
    required VoidCallback? onTap,
    double? borderRadius,
    MarketItemType? type,
  }) {
    final finalBorderRadius = borderRadius ?? 12.0;
    final finalType = type ?? MarketItemType.normal;
    return MarketItemFactory(type: finalType).build(
      key: key,
      distance: distance,
      isFindInApp: isFindInApp,
      name: name,
      imageUrl: imageUrl,
      address: address,
      availability: availability,
      onTap: onTap,
      borderRadius: finalBorderRadius,
    );
  }
}
