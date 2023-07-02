import 'package:flutter/material.dart';
import 'package:base_ui/gen/fonts.gen.dart';

part 'colors.dart';

part 'widget_styles.dart';

abstract class AppTheme {
  static final ThemeData appLight = ThemeData(
    fontFamily: FontFamily.avertaStdCY,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      color: _appPrimaryColor,
      centerTitle: true,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
    scrollbarTheme: ScrollbarThemeData(thickness: MaterialStateProperty.all(0)),
    colorScheme: _lightColorScheme,
    highlightColor: _appHighLightColor,
    splashColor: _appSplashColor,
    indicatorColor: _appIndicatorColor,
    inputDecorationTheme: _appTextFieldTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
    ),
    timePickerTheme: TimePickerThemeData(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.grey, width: 2),
      ),
      dialHandColor: const Color(0xFFF4511E),
      hourMinuteColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? const Color(0xFFF4511E)
            : Colors.black12,
      ),
      hourMinuteTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? Colors.black54
            : Colors.grey,
      ),
      dayPeriodBorderSide: const BorderSide(color: Colors.grey),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      dayPeriodColor: Colors.transparent,
      dayPeriodTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? const Color(0xFFF4511E)
            : Colors.black12,
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black12),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
    extensions: const <ThemeExtension<AppColors>>[AppColors.light],
    primaryColor: _appPrimaryColor,
    focusColor: _appFocusColor,
    hoverColor: _appHoverColor,
    shadowColor: _appShadowColor,
    canvasColor: _appCanvasColor,
    scaffoldBackgroundColor: _appScaffoldBackgroundColor,
    cardColor: _appCardColor,
    dividerColor: _appDividerColor,
    unselectedWidgetColor: _appUnselectedWidgetColor,
    disabledColor: _appDisabledColor,
    secondaryHeaderColor: _appSecondaryHeaderColor,
    dialogBackgroundColor: _appDialogBackgroundColor,
    hintColor: _appHintColor,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return _appToggleableActiveColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return _appToggleableActiveColor;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return _appToggleableActiveColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return _appToggleableActiveColor;
        }
        return null;
      }),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: _appBottomAppBarColor,
      elevation: 0,
    ),
  );
}
