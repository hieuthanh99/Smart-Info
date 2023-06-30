import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:local_services/local_services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_info/router/app_pages.dart';
import 'common/network/dio_client.dart';
import 'l10n/service/language_service.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ cubits
   * └──────────────────────────────────────────────────────────────────────────
   */

  // getIt.registerFactory(
  //   () => LoginCubit(getIt<LoginRepository>()),
  // );

  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ repositories
   * └──────────────────────────────────────────────────────────────────────────
   */

  // getIt.registerLazySingleton<LoginRepository>(
  //   () => LoginRepositoryImpl(loginDatasourceImpl: getIt()),
  // );

  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ remote data sources
   * └──────────────────────────────────────────────────────────────────────────
   */

  // getIt.registerLazySingleton<LoginDatasourceImpl>(
  //   () => LoginDatasourceImpl(),
  // );

  // ======================================================================== //
  //                                   app                                    //
  // ======================================================================== //
  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ dio
   * └──────────────────────────────────────────────────────────────────────────
   */
  getIt.registerLazySingleton<DioClient>(
    () => DioClient(getIt<Dio>()),
  );
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );

  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ languages
   * └──────────────────────────────────────────────────────────────────────────
   */
  GetIt.instance.registerLazySingleton<LanguageService>(
    () => LanguageService(),
  );

  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ routers
   * └──────────────────────────────────────────────────────────────────────────
   */
  GetIt.instance.registerLazySingleton<AppPages>(
    () => AppPages(),
  );

  /**
   * ┌──────────────────────────────────────────────────────────────────────────
   * │ sharePreferences
   * └──────────────────────────────────────────────────────────────────────────
   */

  final sharePref = await SharedPreferences.getInstance();
  GetIt.instance.registerSingletonAsync<SharedPreferences>(
    () async => sharePref,
  );
  GetIt.instance.registerLazySingleton<LocalStorage>(
    () => LocalStorage(sharePref),
  );
}
