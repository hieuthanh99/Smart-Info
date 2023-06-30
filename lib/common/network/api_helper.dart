import 'dart:convert';
import 'package:base_core/base_core.dart';
import 'package:dio/dio.dart';
import 'package:smart_info/di.dart';
import 'dio_client.dart';
import 'dio_exception.dart';

abstract class ApiHelper {
  final DioClient dioClient = getIt<DioClient>();

  Future<T> _requestMethodTemplate<T>({
    required String path,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final Response response = await dioClient.dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    if (response.statusCode?.success ?? false) {
      final T t = getJsonCallback(json.decode(json.encode(response.data)));
      return t;
    } else {
      throw DioExceptions;
    }
  }

  Future<T> post<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    Options? options,
    dynamic data,
  }) async {
    return _requestMethodTemplate(
      path: path,
      data: data,
      options: options,
      queryParameters: queryParameters,
      getJsonCallback: getJsonCallback,
    );
  }

  Future<T> put<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    dynamic data,
    Options? options,
  }) async {
    return _requestMethodTemplate(
      path: path,
      data: data,
      options: options,
      queryParameters: queryParameters,
      getJsonCallback: getJsonCallback,
    );
  }

  Future<T> delete<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    dynamic data,
    Options? options,
  }) async {
    return _requestMethodTemplate(
      path: path,
      data: data,
      options: options,
      queryParameters: queryParameters,
      getJsonCallback: getJsonCallback,
    );
  }

  Future<T> get<T>({
    required String path,
    required T Function(Map<String, dynamic> json) getJsonCallback,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Response response = await dioClient.dio.get(
      path,
      queryParameters: queryParameters,
    );

    final T data = getJsonCallback(
      json.decode(json.encode(response.data)),
    );

    if (response.statusCode.success) {
      return data;
    } else {
      throw DioExceptions;
    }
  }
}
