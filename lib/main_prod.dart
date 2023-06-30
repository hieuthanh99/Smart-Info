import 'package:base_core/base_core.dart';
import 'package:base_ui/base_ui.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:smart_info/router/app_pages.dart';
import 'di.dart';
import 'l10n/service/language_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  AppEnvironment.set(env: Environment.PROD);
  ChuckerFlutter.showOnRelease = false;
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final langService = getIt<LanguageService>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorObservers: [ChuckerFlutter.navigatorObserver],
      getPages: getPage.routes,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appLight,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: langService.locale,
      initialRoute: '',
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }
}
