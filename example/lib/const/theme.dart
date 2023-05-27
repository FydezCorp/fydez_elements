import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

FyTextColor textColors = FyTextColor(
  textOneColor: const Color(0xFFF9F9F9),
  textTwoColor: const Color(0xFFF2F2F2),
  textThreeColor: const Color(0xFFCCCCCC),
  textFourColor: const Color(0xFFD8D8D8),
  textFiveColor: const Color(0xFFB4B4B4),
  textSixColor: const Color(0xFF949494),
  textSevenColor: const Color(0xFF6C6C6C),
  textEightColor: const Color(0xFF585858),
  textNineColor: const Color(0xFF3A3A3A),
  textTenColor: const Color(0xFF1A1A1A),
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
  buttonCornerRadius: 16,
  defaultHorizontalPadding: 16,
  defaultVerticalPadding: 12,
  inputsBorderRadius: 16,
  iconPack: IconPack.material,
  productCardConfiguration: ProductItemConfiguration(
    productImageBackgroundType: ProductImageBackgroundType.white,
    productBadgeLocation: ProductBadgeLocation.topRound,
    productCardType: ProductCardType.A,
    productCornerRadius: 32,
  ),
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
    textColor: const Color(0xFF6C6C6C),
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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      disabledBackgroundColor: const Color(0xFFFCDFB1),
      shadowColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Colors.white,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    foregroundColor: colorScheme.primary,
    elevation: 0,
    side: BorderSide(color: colorScheme.primary, width: 1.0),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  )),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color(0xFF949494),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      disabledForegroundColor: const Color(0xff949494).withOpacity(0.38),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
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
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      letterSpacing: 0,
    ),
    displayMedium: TextStyle(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headlineLarge: TextStyle(
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 22 / 14,
      color: Colors.black,
    ),
    labelLarge: TextStyle(
      fontSize: 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 10,
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 10,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  ),
  extensions: [
    textColors,
    primaryColors,
    themeParameters,
  ],
);
