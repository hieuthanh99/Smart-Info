import 'package:dio/dio.dart';
import 'package:smart_info/common/network/api_result.dart';
import 'package:smart_info/common/network/dio_exception.dart';

mixin RepositoryHelper {
  Future<ApiResult<T>> checkResponse<T>(Future<T> apiCallback) async {
    try {
      final T items = await apiCallback;
      return ApiResult.success(items);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      final statusCode = e.response?.statusCode;
      return ApiResult.failure(errorCode: statusCode, error: errorMessage);
    }
  }
}
