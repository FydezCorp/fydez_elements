// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/product_grid_view/data/product_grid_view_card_type.dart';

import 'data/badge_location.dart';
import 'data/product_image_background_type.dart';

abstract class FyProductGridView {
  final List<BaseProduct> products;
  final ProductGridViewCardType type;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget action;
  final int cornerRadius;
  FyProductGridView({
    required this.products,
    required this.type,
    required this.imageBackgroundType,
    required this.badgeLocation,
    required this.action,
    required this.cornerRadius,
  });
}
