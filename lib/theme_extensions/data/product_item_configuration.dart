import 'package:fydez_elements/fydez_elements.dart';

class ProductItemConfiguration {
  final ProductCardType productCardType;
  final ProductImageBackgroundType productImageBackgroundType;
  final ProductBadgeLocation productBadgeLocation;
  final double productCornerRadius;

  ProductItemConfiguration({
    required this.productCardType,
    required this.productImageBackgroundType,
    required this.productBadgeLocation,
    required this.productCornerRadius,
  });
}
