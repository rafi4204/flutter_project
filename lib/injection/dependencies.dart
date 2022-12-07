import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_template/data/preferences/auth_preferences.dart';
import 'package:flutter_template/data/preferences/user_shared_preferences.dart';
import 'package:flutter_template/data/services/http_client/dio_http_client.dart';
import 'package:flutter_template/domain/preferences/user_preferences.dart';
import 'package:flutter_template/presentation/app_flavor.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injector.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor flavor) async {
    injector.registerLazySingleton<AppFlavor>(() => flavor);
    injector.registerLazySingleton<AppRouter>(() => AppRouter());

    injector.registerLazySingleton<DioHttpClient>(() => DioHttpClient(Dio()));

    final _pref = await SharedPreferences.getInstance();

    injector.registerLazySingleton<AuthPreferences>(() => AuthPreferences(_pref));
    injector.registerLazySingleton<UserPreferences>(() => UserSharedPreferences(_pref));

    await configureDependencies();
  }
}