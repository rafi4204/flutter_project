import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/data/api/api_config.dart';
import 'package:flutter_template/data/interceptor/auth_interceptor.dart';
import 'package:flutter_template/injection/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataModule {
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  Dio getDio(ApiConfig apiConfig) {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
// customization
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    dio.httpClientAdapter = DefaultHttpClientAdapter();
    dio.options.baseUrl = apiConfig.apiUrl;
    dio.interceptors.add(
      AuthInterceptor(
        httpClient: injector(),
        authPreferences: injector(),
        userPreferences: injector(),
        refreshTokenHttpClient: injector(),
        onTokenExpired: () {
          // TODO: Handle log out
        },
      ),
    );

    return dio;
  }
}