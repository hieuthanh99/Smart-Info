import 'package:base_core/base_core.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:smart_info/common/network/app_interceptor.dart';

import 'dio_interceptor.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio) {
    dio
      ..options.baseUrl = AppEnvironment.getConfig().apiBaseUrl ?? 'null'
      ..options.headers = AppEnvironment.getConfig().header
      ..options.connectTimeout =
          AppEnvironment.getConfig().connectionTimeout ?? 15000
      ..options.receiveTimeout =
          AppEnvironment.getConfig().receiveTimeout ?? 15000
      ..options.responseType = ResponseType.json;
    if (AppEnvironment.getConfig().flavorName == Environment.DEV.name) {
      dio.interceptors.add(ChuckerDioInterceptor());
    } else if (AppEnvironment.getConfig().flavorName ==
        Environment.STAGING.name) {
      dio.interceptors.add(DioInterceptor());
    } else if (AppEnvironment.getConfig().flavorName == Environment.PROD.name ||
        AppEnvironment.getConfig().flavorName == Environment.UAT.name) {
      dio.interceptors.add(AppInterceptor());
    }
  }
}
