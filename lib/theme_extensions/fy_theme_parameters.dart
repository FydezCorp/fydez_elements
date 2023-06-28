import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/theme_extensions/data/button_configuration.dart';

class FyThemeParameters extends ThemeExtension<FyThemeParameters> {
  final ButtonConfiguration buttonConfiguration;
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
  final PopupConfiguration popupConfiguration;
  final RadioTileType radioTileType;
  final TabbarType tabbarType;
  final TextInputConfiguration textInputConfiguration;
  FyThemeParameters({
    required this.buttonConfiguration,
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
    required this.popupConfiguration,
    required this.radioTileType,
    required this.tabbarType,
    required this.textInputConfiguration,
  });

  @override
  ThemeExtension<FyThemeParameters> copyWith({
    ButtonConfiguration? buttonConfiguration,
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
    PopupConfiguration? popupConfiguration,
    RadioTileType? radioTileType,
    TabbarType? tabbarType,
    TextInputConfiguration? textInputConfiguration,
  }) {
    return FyThemeParameters(
      buttonConfiguration: buttonConfiguration ?? this.buttonConfiguration,
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
      popupConfiguration: popupConfiguration ?? this.popupConfiguration,
      radioTileType: radioTileType ?? this.radioTileType,
      tabbarType: tabbarType ?? this.tabbarType,
      textInputConfiguration:
          textInputConfiguration ?? this.textInputConfiguration,
    );
  }

  @override
  ThemeExtension<FyThemeParameters> lerp(
      ThemeExtension<FyThemeParameters>? other, double t) {
    if (other is! FyThemeParameters) {
      return this;
    }
    return FyThemeParameters(
      buttonConfiguration: buttonConfiguration,
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
      popupConfiguration: popupConfiguration,
      radioTileType: radioTileType,
      tabbarType: tabbarType,
      textInputConfiguration: textInputConfiguration,
    );
  }
}
