// ignore_for_file: file_names

import 'package:dio/dio.dart';

import 'Log.dart';

class DioLogger {
  static void onSend(String tag, RequestOptions options) {
    Log.info(
        '$tag - Request Path : [${options.method}] ${options.baseUrl}${options.path}');
    Log.info('$tag - Request Headers : [${options.headers}]');
    Log.info('$tag - Request Data : ${options.queryParameters.toString()}');
    Log.info('$tag - Request Data : ${options.data.toString()}');
  }

  static void onSuccess(String tag, Response response) {
    Log.info(
        '$tag - Response Path : [${response.requestOptions.method}] ${response.requestOptions.baseUrl}${response.requestOptions.path} Request Data : ${response.requestOptions.data.toString()}');
    Log.info('$tag - Response statusCode : ${response.statusCode}');
    Log.info('$tag - Response data : ${response.data.toString()}');
  }

  static void onError(String tag, DioError error) {
    if (null != error.response) {
      Log.info(
          '$tag - Error Path : [${error.response!.requestOptions.method}] ${error.response!.requestOptions.baseUrl}${error.response!.requestOptions.path} Request Data : ${error.response!.requestOptions.data.toString()}');
      Log.info('$tag - Error statusCode : ${error.response!.statusCode}');
      Log.info(
          '$tag - Error data : ${null != error.response!.data ? error.response!.data.toString() : ''}');
    }
    Log.info('$tag - Error Message : ${error.message}');
  }
}
