import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyThemeParameters extends ThemeExtension<FyThemeParameters> {
  final double buttonCornerRadius;
  final double inputsBorderRadius;
  final double defaultVerticalPadding;
  final double defaultHorizontalPadding;
  final IconPack iconPack;
  final ProductItemConfiguration productCardConfiguration;
  final BottomNavBarConfiguration bottomNavBarConfiguration;
  final CartItemType cartItemType;
  final CategoryItemType categoryItemType;
  final CheckboxTileType checkboxTileType;
  final DropdownConfiguration dropdownConfiguration;
  final MarketItemConfiguration marketItemConfiguration;
  FyThemeParameters({
    required this.buttonCornerRadius,
    required this.inputsBorderRadius,
    required this.defaultVerticalPadding,
    required this.defaultHorizontalPadding,
    required this.iconPack,
    required this.productCardConfiguration,
    required this.bottomNavBarConfiguration,
    required this.cartItemType,
    required this.categoryItemType,
    required this.checkboxTileType,
    required this.dropdownConfiguration,
    required this.marketItemConfiguration,
  });

  @override
  ThemeExtension<FyThemeParameters> copyWith({
    double? buttonCornerRadius,
    double? inputsBorderRadius,
    double? defaultVerticalPadding,
    double? defaultHorizontalPadding,
    IconPack? iconPack,
    ProductItemConfiguration? productCardConfiguration,
    BottomNavBarConfiguration? bottomNavBarConfiguration,
    CartItemType? cartItemType,
    CategoryItemType? categoryItemType,
    CheckboxTileType? checkboxTileType,
    DropdownConfiguration? dropdownConfiguration,
    MarketItemConfiguration? marketItemConfiguration,
  }) {
    return FyThemeParameters(
      buttonCornerRadius: buttonCornerRadius ?? this.buttonCornerRadius,
      inputsBorderRadius: inputsBorderRadius ?? this.inputsBorderRadius,
      defaultVerticalPadding:
          defaultVerticalPadding ?? this.defaultVerticalPadding,
      defaultHorizontalPadding:
          defaultHorizontalPadding ?? this.defaultHorizontalPadding,
      iconPack: iconPack ?? this.iconPack,
      productCardConfiguration:
          productCardConfiguration ?? this.productCardConfiguration,
      bottomNavBarConfiguration:
          bottomNavBarConfiguration ?? this.bottomNavBarConfiguration,
      cartItemType: cartItemType ?? this.cartItemType,
      categoryItemType: categoryItemType ?? this.categoryItemType,
      checkboxTileType: checkboxTileType ?? this.checkboxTileType,
      dropdownConfiguration:
          dropdownConfiguration ?? this.dropdownConfiguration,
      marketItemConfiguration:
          marketItemConfiguration ?? this.marketItemConfiguration,
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
      productCardConfiguration: productCardConfiguration,
      bottomNavBarConfiguration: bottomNavBarConfiguration,
      cartItemType: cartItemType,
      categoryItemType: categoryItemType,
      checkboxTileType: checkboxTileType,
      dropdownConfiguration: dropdownConfiguration,
      marketItemConfiguration: marketItemConfiguration,
    );
  }
}
