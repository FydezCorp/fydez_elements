import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/theme_extensions/data/notifier_configuration.dart';

FyTextColor textColors = FyTextColor(
  textOneColor: const Color(0xFFF9F9F9),
  textTwoColor: const Color(0xFFF2F2F2),
  textThreeColor: const Color(0xFFCCCCCC),
  textFourColor: const Color(0xFFD8D8D8),
  textFiveColor: const Color(0xffB4B4B4),
  textSixColor: const Color(0xFF949494),
  textSevenColor: const Color(0xff6C6C6C),
  textEightColor: const Color(0xff585858),
  textNineColor: const Color(0xFF3A3A3A),
  textTenColor: const Color(0xff1A1A1A),
  titleColor: Colors.red,
  subtitleColor: Colors.greenAccent,
);

FyPrimaryColor primaryColors = FyPrimaryColor(
  primaryOneColor: const Color(0xFFFDF3E0),
  primaryTwoColor: const Color(0xFFFCDFB1),
  primaryThreeColor: const Color(0xFFFACA7E),
  primaryFourColor: const Color(0xFFF8B549),
  primaryFiveColor: const Color(0xFFF6A223),
  primarySixColor: const Color(0xFFF59300),
  primarySevenColor: const Color(0xFFF18900),
  primaryEightColor: const Color(0xFFEB7A00),
  primaryNineColor: const Color(0xFFE56B00),
  primaryTenColor: const Color(0xFFDC5100),
);

FyThemeParameters themeParameters = FyThemeParameters(
    buttonConfiguration: ButtonConfiguration(
      filledCornerRadius: 20.0,
      filledType: FilledButtonType.material,
      outlinedCornerRadius: 10.0,
      outlinedType: OutlinedButtonType.material,
      textCornerRadius: 10.0,
      textType: TextButtonType.material,
      iconType: IconButtonType.material,
    ),
    defaultHorizontalPadding: 16,
    defaultVerticalPadding: 12,
    iconPack: IconPack.material,
    productCardConfiguration: ProductItemConfiguration(
      productImageBackgroundType: ProductImageBackgroundType.shadow,
      productBadgeLocation: ProductBadgeLocation.topRound,
      productCardType: ProductCardType.B,
      productCornerRadius: 10,
    ),
    bottomNavBarConfiguration: BottomNavBarConfiguration(
      style: NavBarStyle.transparent,
      cornerRadius: 0,
      effect: NavBarEffect.shadow,
      hasTitle: false,
    ),
    cartItemType: CartItemType.normal,
    categoryItemType: CategoryItemType.normal,
    checkboxTileType: CheckboxTileType.normal,
    dropdownConfiguration: DropdownConfiguration(
      type: DropdownType.modal,
      cornerRadius: 10.0,
    ),
    marketItemConfiguration: MarketItemConfiguration(
      cornerRadius: 20.0,
      type: MarketItemType.normal,
    ),
    popupConfiguration: PopupConfiguration(
      cornerRadius: 20.0,
      type: PopupType.modal,
      background: PopupBG.blur,
      handle: PopupHandle.inside,
    ),
    radioTileType: RadioTileType.normal,
    tabbarType: TabbarType.underlined,
    textInputConfiguration: TextInputConfiguration(
      type: FyInputType.A,
      cornerRadius: 10.0,
    ),
    notifierConfiguration: NotifierConfiguration(
      cornerRadius: 10.0,
      bgType: NotifierBGType.normal,
    ));
FySpacing spacing = FySpacing(
  topBottomPadding: 10,
  rightLeftPadding: 20,
  cornerRadius: 5,
);
ColorScheme colorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFF6A223),
  secondary: Color(0xFF0055A5),
  onSecondary: Colors.white,
  onPrimary: Colors.white,
  background: Colors.white,
  onBackground: Color(0xff3A3A3A),
  error: Color(0xffFF4B36),
  onError: Colors.white,
  surface: Colors.white,
  onSurface: Color(0xff6C6C6C),
  primaryContainer: Colors.white,
  secondaryContainer: Color(0xFFF6A223),
);

ThemeData theme = ThemeData(
  primarySwatch: primaryColors.primarySwatch,
  colorScheme: colorScheme,
  unselectedWidgetColor: const Color(0xffD8D8D8),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  ),
  scaffoldBackgroundColor: Colors.white,
  expansionTileTheme: ExpansionTileThemeData(
    backgroundColor: textColors.textOneColor,
    tilePadding: const EdgeInsets.all(10.0),
    collapsedBackgroundColor: textColors.textOneColor,
  ),
  listTileTheme: ListTileThemeData(
    textColor: const Color(0xff6C6C6C),
    contentPadding: const EdgeInsets.all(5.0),
    horizontalTitleGap: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Color(0xff3A3A3A),
    elevation: 0,
    centerTitle: false,
  ),
  tabBarTheme: TabBarTheme(
    labelStyle: TextStyle(
      color: colorScheme.primary,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff6C6C6C)),
  ),
  hintColor: const Color(0xffB4B4B4),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.red,
    modalBackgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    )),
  ),
  radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
          (states) => colorScheme.primary)),
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      fontSize: 22,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 22 / 14,
      color: Colors.black,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelSmall: TextStyle(
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  ),
  extensions: [
    textColors,
    primaryColors,
    themeParameters,
    spacing,
  ],
);
