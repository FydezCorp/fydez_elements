import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyThemeParameters extends ThemeExtension<FyThemeParameters> {
  final double buttonCornerRadius;
  final double inputsBorderRadius;
  final double defaultVerticalPadding;
  final double defaultHorizontalPadding;
  final IconPack iconPack;

  // * Product Item
  final ProductCardType productCardType;
  final ProductImageBackgroundType productImageBackgroundType;
  final ProductBadgeLocation productBadgeLocation;
  final double productCornerRadius;

  FyThemeParameters({
    required this.buttonCornerRadius,
    required this.inputsBorderRadius,
    required this.defaultVerticalPadding,
    required this.defaultHorizontalPadding,
    required this.iconPack,
    required this.productBadgeLocation,
    required this.productCardType,
    required this.productCornerRadius,
    required this.productImageBackgroundType,
  });

  @override
  ThemeExtension<FyThemeParameters> copyWith({
    double? buttonCornerRadius,
    double? inputsBorderRadius,
    double? defaultVerticalPadding,
    double? defaultHorizontalPadding,
    IconPack? iconPack,
    ProductCardType? productCardType,
    ProductImageBackgroundType? productImageBackgroundType,
    ProductBadgeLocation? productBadgeLocation,
    double? productCornerRadius,
  }) {
    return FyThemeParameters(
      buttonCornerRadius: buttonCornerRadius ?? this.buttonCornerRadius,
      inputsBorderRadius: inputsBorderRadius ?? this.inputsBorderRadius,
      defaultVerticalPadding:
          defaultVerticalPadding ?? this.defaultVerticalPadding,
      defaultHorizontalPadding:
          defaultHorizontalPadding ?? this.defaultHorizontalPadding,
      iconPack: iconPack ?? this.iconPack,
      productBadgeLocation: productBadgeLocation ?? this.productBadgeLocation,
      productCardType: productCardType ?? this.productCardType,
      productCornerRadius: productCornerRadius ?? this.productCornerRadius,
      productImageBackgroundType:
          productImageBackgroundType ?? this.productImageBackgroundType,
    );
  }

  @override
  ThemeExtension<FyThemeParameters> lerp(
      ThemeExtension<FyThemeParameters>? other, double t) {
    if (other is! FyThemeParameters) {
      return this;
    }
    return FyThemeParameters(
      buttonCornerRadius: buttonCornerRadius,
      inputsBorderRadius: inputsBorderRadius,
      defaultVerticalPadding: defaultVerticalPadding,
      defaultHorizontalPadding: defaultHorizontalPadding,
      iconPack: iconPack,
      productBadgeLocation: productBadgeLocation,
      productCardType: productCardType,
      productCornerRadius: productCornerRadius,
      productImageBackgroundType: productImageBackgroundType,
    );
  }
}
