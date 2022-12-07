// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../data/api/api_config.dart' as _i4;
import '../data/preferences/auth_preferences.dart' as _i16;
import '../data/services/http_client/dio_http_client.dart' as _i10;
import '../data/services/http_client/http_client.dart' as _i9;
import '../data/services/http_profile_service.dart' as _i12;
import '../data/services/http_user_service.dart' as _i18;
import '../data/services/remote_datasource.dart' as _i13;
import '../data/services/user_local_data_source.dart' as _i15;
import '../domain/services/profile_service.dart' as _i11;
import '../domain/services/user_service.dart' as _i17;
import '../domain/use_cases/get_auth_token_use_case.dart' as _i19;
import '../presentation/feature/home/home_cubit.dart' as _i20;
import '../presentation/feature/login/firebase_auth_manager.dart' as _i8;
import '../presentation/feature/login/login_cubit.dart' as _i21;
import '../presentation/feature/profile/profile_cubit.dart' as _i22;
import '../presentation/feature/profile/profile_state.dart' as _i23;
import '../presentation/routes/app_navigator.dart' as _i5;
import '../presentation/routes/router.dart' as _i3;
import '../presentation/routes/router.gr.dart' as _i6;
import 'data_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dataModule = _$DataModule();
  gh.factory<_i3.$AppRouter>(() => _i3.$AppRouter());
  gh.factory<_i4.ApiConfig>(() => _i4.ApiConfig());
  gh.lazySingleton<_i5.AppNavigator>(
      () => _i5.AppNavigator(get<_i6.AppRouter>()));
  gh.factory<_i7.Dio>(() => dataModule.getDio(get<_i4.ApiConfig>()));
  gh.factory<_i8.FirebaseAuthManager>(() => _i8.FirebaseAuthManager());
  gh.factory<_i9.HttpClient>(() => _i10.DioHttpClient(get<_i7.Dio>()));
  gh.lazySingleton<_i11.ProfileService>(() => _i12.HttpProfileService());
  gh.lazySingleton<_i13.RemoteDataSource>(
      () => _i13.RemoteDataSource(get<_i7.Dio>()));
  gh.singletonAsync<_i14.SharedPreferences>(() => dataModule.prefs);
  gh.lazySingleton<_i15.UserLocalDataSource>(
      () => _i15.UserLocalDataSource(get<_i16.AuthPreferences>()));
  gh.lazySingleton<_i17.UserService>(() => _i18.HttpUserService(
      get<_i13.RemoteDataSource>(), get<_i15.UserLocalDataSource>()));
  gh.factory<_i19.GetAuthTokenUsecase>(
      () => _i19.GetAuthTokenUsecase(get<_i17.UserService>()));
  gh.factory<_i20.HomeCubit>(() => _i20.HomeCubit(
      get<_i19.GetAuthTokenUsecase>(), get<_i8.FirebaseAuthManager>()));
  gh.factory<_i21.LoginCubit>(() => _i21.LoginCubit(
      get<_i19.GetAuthTokenUsecase>(), get<_i8.FirebaseAuthManager>()));
  gh.factoryParam<_i22.ProfileCubit, _i23.ProfileState?, dynamic>((state, _) =>
      _i22.ProfileCubit(
          profileService: get<_i11.ProfileService>(), state: state));
  return get;
}

class _$DataModule extends _i24.DataModule {}
