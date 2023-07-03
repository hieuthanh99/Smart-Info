part of 'theme.dart';

const MaterialColor primaryColor = MaterialColor(
  0xFF0b13a1,
  <int, Color>{
    100: Color(0xFF0b13a1),
    90: Color(0xFF232baa),
    80: Color(0xFF3c42b4),
    70: Color(0xFF545abd),
    60: Color(0xFF6d71c7),
    50: Color(0xFF8589d0),
    40: Color(0xFF9da1d9),
    30: Color(0xFFb6b8e3),
    20: Color(0xFFced0ec),
    10: Color(0xFFe7e7f6),
  },
);

const MaterialColor yellow = MaterialColor(
  0xFFDF9F20,
  <int, Color>{
    100: Color(0xFFDF9F20),
    90: Color(0xFFE3A937),
    80: Color(0xFFE5B24D),
    70: Color(0xFFE9BC63),
    60: Color(0xFFECC579),
    50: Color(0xFFEFCF90),
    40: Color(0xFFF2D9A6),
    30: Color(0xFFF6E3BD),
    20: Color(0xFFF9ECD2),
    10: Color(0xFFFCF6E9),
  },
);

const MaterialColor black = MaterialColor(
  0xFF070504,
  <int, Color>{
    100: Color(0xFF070504),
    90: Color(0xFF201E1E),
    80: Color(0xFF393736),
    70: Color(0xFF525050),
    60: Color(0xFF6A6968),
    50: Color(0xFF838282),
    40: Color(0xFF9C9B9B),
    30: Color(0xFFB5B4B4),
    20: Color(0xFFCDCDCD),
    10: Color(0xFFF0F1F3),
  },
);

const Color white = Color(0xffffffff);

const MaterialColor warning = MaterialColor(
  0xFFF6A609,
  <int, Color>{
    100: Color(0xFFF6A609),
    120: Color(0xFFE89806),
    80: Color(0xFFFFBC1F),
  },
);

const MaterialColor success = MaterialColor(
  0xFF2AC769,
  <int, Color>{
    100: Color(0xFF2AC769),
    120: Color(0xFF1AB759),
    80: Color(0xFF40DD7F),
  },
);

const MaterialColor error = MaterialColor(
  0xFFFB4E4E,
  <int, Color>{
    100: Color(0xFFFB4E4E),
    120: Color(0xFFE93C3C),
    80: Color(0xFFFF6262),
  },
);

const _appScaffoldBackgroundColor = white;
const _appBottomAppBarColor = white;
const _appCardColor = white;
const _appDialogBackgroundColor = white;
const _appCanvasColor = Color(0x00000000);
const _appUnselectedWidgetColor = Color(0xff323232);
const _appFocusColor = Color(0xffdedede);
const _appDividerColor = Color(0xfff1f1f5);
const _appDisabledColor = Colors.grey;
const _appHintColor = Color(0xff8B929A);
const _appShadowColor = Color(0xff696969);
const _appSplashColor = Color(0xFFE6F0F3);
const _appHoverColor = Color(0xFFE6F0F3);
const _appHighLightColor = Color(0xFFB3D2DB);
const appBarColor = Color(0xFF5C92C8);
const _appSecondaryHeaderColor = Color(0xFF33869D);
const _appToggleableActiveColor = Color(0xFF1A7892);
const _appPrimaryColor = Color(0xFF006885);
const _appIndicatorColor = Color(0xFF006885);
const _appErrorColor = Color(0xFFE93C3C);

const ColorScheme _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primaryContainer: white,
  onSecondary: white,
  secondaryContainer: white,
  onTertiary: white,
  tertiaryContainer: white,
  onError: white,
  background: Color(0xfffdf9ee),
  surface: Color(0xfffefcf6),
  surfaceVariant: Color(0xfffdf9ee),
  onInverseSurface: Color(0xfff5f5f5),
  outline: Color(0xff62625c),
  onTertiaryContainer: Color(0xFF006885),
  primary: Color(0xFF006885),
  onSecondaryContainer: Color(0xFF1A7892),
  onBackground: Color(0xFF006885),
  onPrimaryContainer: Color(0xFF33869D),
  inverseSurface: Color(0xFF4D96AA),
  onSurfaceVariant: Color(0xFF4D96AA),
  onSurface: Color(0xFF4D96AA),
  shadow: Color(0xFF4D96AA),
  onPrimary: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFF6262),
  error: Color(0xFFE93C3C),
  inversePrimary: Color(0xFF33869D),
  surfaceTint: Color(0xFF1A7892),
  tertiary: Color(0xFF1A7892),
  secondary: Color(0xFF006885),
);

/// A [ThemeExtension] for app colors.
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.red,
    required this.orangeYellow,
    required this.beer,
    required this.richElectricBlue,
    required this.seaBlue,
    required this.batteryChargedBlue,
    required this.skyBlue,
    required this.androidGreen,
    required this.white,
    required this.platinum,
    required this.gainsboro,
    required this.antiFlashWhite,
    required this.lightSilver,
    required this.gray,
    required this.romanSilver,
    required this.darkCharcoal,
    required this.eerieBlack,
    required this.black,
    required this.transparent,
    required this.deepBrown,
    required this.btnFace,
    required this.btnGoo,
    required this.btnPhone,
    required this.btnNextShadown1,
    required this.btnNextShadown2,
    required this.title,
    required this.colorTime,
    required this.divider,
  });

  final Color? red;
  final Color? colorTime;
  final Color? orangeYellow;
  final Color? beer;
  final Color? richElectricBlue;
  final Color? seaBlue;
  final Color? batteryChargedBlue;
  final Color? skyBlue;
  final Color? androidGreen;
  final Color? white;
  final Color? platinum;
  final Color? gainsboro;
  final Color? antiFlashWhite;
  final Color? lightSilver;
  final Color? gray;
  final Color? romanSilver;
  final Color? darkCharcoal;
  final Color? eerieBlack;
  final Color? black;
  final Color? transparent;
  final Color? title;
  final Color? deepBrown;
  final Color? btnFace;
  final Color? btnGoo;
  final Color? btnPhone;
  final Color? btnNextShadown1;
  final Color? btnNextShadown2;
  final Color? divider;

  @override
  AppColors copyWith({
    Color? red,
    Color? colorTime,
    Color? orangeYellow,
    Color? beer,
    Color? richElectricBlue,
    Color? seaBlue,
    Color? batteryChargedBlue,
    Color? skyBlue,
    Color? androidGreen,
    Color? white,
    Color? platinum,
    Color? gainBoro,
    Color? antiFlashWhite,
    Color? lightSilver,
    Color? gray,
    Color? romanSilver,
    Color? darkCharcoal,
    Color? eerieBlack,
    Color? black,
    Color? transparent,
    Color? btnFace,
    Color? btnGoo,
    Color? btnPhone,
    Color? btnNextShadown1,
    Color? btnNextShadown2,
    Color? divider,
  }) =>
      AppColors(
        red: red ?? red,
        colorTime: colorTime ?? colorTime,
        orangeYellow: orangeYellow ?? orangeYellow,
        beer: beer ?? beer,
        richElectricBlue: richElectricBlue ?? richElectricBlue,
        seaBlue: seaBlue ?? seaBlue,
        batteryChargedBlue: batteryChargedBlue ?? batteryChargedBlue,
        skyBlue: skyBlue ?? skyBlue,
        androidGreen: androidGreen ?? androidGreen,
        white: white ?? white,
        platinum: platinum ?? platinum,
        gainsboro: gainsboro ?? gainsboro,
        antiFlashWhite: antiFlashWhite ?? antiFlashWhite,
        lightSilver: lightSilver ?? lightSilver,
        gray: gray ?? gray,
        romanSilver: romanSilver ?? romanSilver,
        darkCharcoal: darkCharcoal ?? darkCharcoal,
        eerieBlack: eerieBlack ?? eerieBlack,
        black: black ?? black,
        transparent: transparent ?? transparent,
        title: title ?? title,
        deepBrown: deepBrown ?? deepBrown,
        btnFace: btnFace ?? btnFace,
        btnGoo: btnFace ?? btnGoo,
        btnPhone: btnFace ?? btnPhone,
        btnNextShadown1: btnNextShadown1 ?? btnNextShadown1,
        btnNextShadown2: btnNextShadown2 ?? btnNextShadown2,
        divider: divider ?? divider,
      );

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      red: Color.lerp(red, other.red, t),
      colorTime: Color.lerp(colorTime, other.colorTime, t),
      orangeYellow: Color.lerp(orangeYellow, other.orangeYellow, t),
      beer: Color.lerp(beer, other.beer, t),
      richElectricBlue: Color.lerp(richElectricBlue, other.richElectricBlue, t),
      seaBlue: Color.lerp(seaBlue, other.seaBlue, t),
      batteryChargedBlue: Color.lerp(
        batteryChargedBlue,
        other.batteryChargedBlue,
        t,
      ),
      skyBlue: Color.lerp(skyBlue, other.skyBlue, t),
      androidGreen: Color.lerp(androidGreen, other.androidGreen, t),
      white: Color.lerp(white, other.white, t),
      platinum: Color.lerp(platinum, other.platinum, t),
      gainsboro: Color.lerp(gainsboro, other.gainsboro, t),
      antiFlashWhite: Color.lerp(antiFlashWhite, other.antiFlashWhite, t),
      lightSilver: Color.lerp(lightSilver, other.lightSilver, t),
      gray: Color.lerp(gray, other.gray, t),
      romanSilver: Color.lerp(romanSilver, other.romanSilver, t),
      darkCharcoal: Color.lerp(darkCharcoal, other.darkCharcoal, t),
      eerieBlack: Color.lerp(eerieBlack, other.eerieBlack, t),
      black: Color.lerp(black, other.black, t),
      transparent: Color.lerp(transparent, other.transparent, t),
      btnFace: Color.lerp(btnFace, other.btnFace, t),
      btnGoo: Color.lerp(btnGoo, other.btnGoo, t),
      btnPhone: Color.lerp(btnPhone, other.btnPhone, t),
      btnNextShadown1: Color.lerp(btnNextShadown1, other.btnNextShadown1, t),
      btnNextShadown2: Color.lerp(btnNextShadown2, other.btnNextShadown2, t),
      deepBrown: Color.lerp(deepBrown, other.deepBrown, t),
      divider: Color.lerp(divider, other.divider, t),
      title: Color.lerp(title, other.title, t),
    );
  }

  static const AppColors light = AppColors(
    red: Color(0xffff0000),
    colorTime: Color(0xff8B929A),
    orangeYellow: Color(0xfff2b92a),
    beer: Color(0xffef8720),
    richElectricBlue: Color(0xFF006885),
    seaBlue: Color(0xff006f96),
    batteryChargedBlue: Color(0xFF1A7892),
    skyBlue: Color(0xff65e0db),
    androidGreen: Color(0xffafc536),
    white: Color(0xffffffff),
    platinum: Color(0xffe4e4e4),
    gainsboro: Color(0xffdedede),
    antiFlashWhite: Color(0xfff1f1f5),
    lightSilver: Color(0xffd7d7d7),
    gray: Color(0xffb4bbc5),
    romanSilver: Color(0xff8b929a),
    darkCharcoal: Color(0xff323232),
    eerieBlack: Color(0xff1e1e1e),
    black: Color(0xff000000),
    transparent: Color(0x00000000),
    btnFace: Color(0xff007AFF),
    btnGoo: Color(0xffE74C3C),
    btnPhone: Color(0xff17A2B8),
    btnNextShadown1: Color(0xFF1A7892),
    btnNextShadown2: Color(0xff65E0DB),
    deepBrown: Color.fromARGB(80, 60, 58, 58),
    title: Color(0xff1E1E1E),
    divider: Color(0xffDEDEDE),
  );
}
