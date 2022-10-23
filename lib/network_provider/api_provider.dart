import 'package:dio/dio.dart';
import 'package:fantasy_gaming/models/auth.dart';
import 'package:fantasy_gaming/network_provider/api_constant.dart';
import 'package:fantasy_gaming/utils/DioLogger.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:get_storage/get_storage.dart';

class ApiProvider {

  Dio _dio = Dio();
  DioError? _dioError;

  ApiProvider.base() {
    BaseOptions dioOptions = BaseOptions()..baseUrl = baseUrl;
    _dio = Dio(dioOptions);
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      options.headers = {'Content-Type': 'application/json'};
      DioLogger.onSend(tag, options);
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      DioLogger.onSuccess(tag, response);
      return handler.next(response);
    }, onError: (DioError error, handler) {
      _dioError = error;
      DioLogger.onError(tag, error);
      return handler.next(error);
    }));
  }

  ApiProvider.baseWithToken() {
    BaseOptions dioOptions = BaseOptions()..baseUrl = baseUrl;
    _dio = Dio(dioOptions);
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      String accessToken =  GetStorage().read(AppConstants.accessToken);
      options.headers = {'Content-Type': 'application/json'};
      options.headers = {'token': accessToken};
      DioLogger.onSend(tag, options);
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      DioLogger.onSuccess(tag, response);
      return handler.next(response);
    }, onError: (DioError error, handler) {
      _dioError = error;
      DioLogger.onError(tag, error);
      return handler.next(error);
    }));
  }

  ApiProvider.baseWithMultipart() {
    BaseOptions dioOptions = BaseOptions()..baseUrl = baseUrl;
    _dio = Dio(dioOptions);
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      String accessToken =  GetStorage().read('access_token');
      options.headers = {'Content-Type': 'multipart/form-data'};
      options.headers = {'token': accessToken};
      DioLogger.onSend(tag, options);
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      DioLogger.onSuccess(tag, response);
      return handler.next(response);
    }, onError: (DioError error, handler) {
      _dioError = error;
      DioLogger.onError(tag, error);
      return handler.next(error);
    }));
  }

  Future registerUser(FormData params) async {
    try {
      Response response = await _dio.post(strRegister, data: params);
      return Auth.fromJson(response.data);
    }catch (error, stacktrace) {
      handleException(error, stacktrace, _dioError!);
    }
  }

  Future loginUser(FormData params) async {
    try {
      Response response = await _dio.post(strLogin, data: params);
      return Auth.fromJson(response.data);
    }catch (error, stacktrace) {
      handleException(error, stacktrace, _dioError!);
    }
  }




}

