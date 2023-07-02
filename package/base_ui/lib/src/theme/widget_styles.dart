part of 'theme.dart';

const _fontPackage = 'base_ui';
const _primaryFontFamily = FontFamily.avertaStdCY;
const _appFontFamily = FontFamily.avertaStdCY;
const _primaryTextColor = Color(0xff1e1e1e);

const TextTheme _appTextTheme = TextTheme(
  displayLarge: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 21,
    color: _primaryTextColor,
  ),
  displayMedium: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 19,
    color: _primaryTextColor,
  ),
  displaySmall: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 17,
    color: _primaryTextColor,
  ),
  headlineLarge: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 19,
    color: _primaryTextColor,
  ),
  headlineMedium: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 17,
    color: _primaryTextColor,
  ),
  headlineSmall: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 15,
    color: _primaryTextColor,
  ),
  titleLarge: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 17,
    color: _primaryTextColor,
  ),
  titleMedium: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 15,
    color: _primaryTextColor,
  ),
  titleSmall: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 13,
    color: _primaryTextColor,
  ),
  bodyLarge: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 15,
    color: _primaryTextColor,
  ),
  bodyMedium: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 13,
    color: _primaryTextColor,
  ),
  bodySmall: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 11,
    color: _primaryTextColor,
  ),
  labelLarge: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 15,
    color: _primaryTextColor,
  ),
  labelMedium: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 13,
    color: _primaryTextColor,
  ),
  labelSmall: TextStyle(
    package: _fontPackage,
    fontFamily: _primaryFontFamily,
    fontSize: 11,
    color: _primaryTextColor,
  ),
);

const InputDecorationTheme _appTextFieldTheme = InputDecorationTheme(
  enabledBorder: OutlineBorder.enabledBorder,
  focusedBorder: OutlineBorder.focusedBorder,
  errorBorder: OutlineBorder.errorBorder,
  border: OutlineBorder.inputBorder,
);

class OutlineBorder {
  static const focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: primaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  static const enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(color: _appSplashColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  static const errorBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 3, color: error),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  static const inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(color: error),
  );

  static const focusedErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 3, color: error),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
  );

  ///App Border
  static final appInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static final appInputEnabledBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static final appInputFocusedBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static const appInputErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: error,
    ),
  );

  static const appInputFocusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: error,
    ),
  );

  static const appInputDisabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: primaryColor,
    ),
  );

  static final secondaryInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[10]!,
    ),
  );

  static final secondaryInputEnabledBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[10]!,
    ),
  );

  static final secondaryInputFocusedBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[10]!,
    ),
  );

  static const secondaryInputErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: error,
    ),
  );

  static const secondaryInputFocusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: error,
    ),
  );

  static final secondaryInputDisabledBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static final searchInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static final searchInputEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static final searchInputFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: black[20]!,
    ),
  );

  static const searchInputDisabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: primaryColor,
    ),
  );
}

class AppTextStyle {
  static TextStyle poppins_600_36 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 36,
    fontWeight: FontWeight.w800,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_36 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 36,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_32 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_32 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_28 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_28 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_24 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_24 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_20 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_20 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_400_20 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_18 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_18 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_400_18 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_16 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_16 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_400_16 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_14 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_14 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_400_14 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
  );

  static TextStyle poppins_600_12 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
  );

  static TextStyle poppins_500_12 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static TextStyle poppins_400_12 = TextStyle(
    package: _fontPackage,
    fontFamily: _appFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
  );
}
