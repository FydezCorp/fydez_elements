import 'package:fydez_elements/product_grid_view/data/product/badge.dart';
import 'package:fydez_elements/product_grid_view/data/product/base_variation.dart';

abstract class BaseProduct {
  final int id;
  final String name;
  final String image;
  final String price;
  final String finalPrice;
  final List<BaseVariation> variations;
  final Badge badge;

  BaseProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.finalPrice,
    required this.variations,
    required this.badge,
  });
}

class SampleProduct extends BaseProduct {
  SampleProduct({
    required super.id,
    required super.name,
    required super.image,
    required super.price,
    required super.finalPrice,
    required super.variations,
    required super.badge,
  });
}
