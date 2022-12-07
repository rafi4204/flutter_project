import 'package:dio/dio.dart';
import 'package:flutter_template/data/services/request_body/login_request_model.dart';
import 'package:flutter_template/data/services/request_body/user_token.dart';
import 'package:flutter_template/data/services/response_objects/access_token_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import '../../domain/entities/user.dart';

part 'remote_datasource.g.dart';

@LazySingleton()
@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class RemoteDataSource {
  @factoryMethod
  factory RemoteDataSource(Dio dio) = _RemoteDataSource;

  @GET('user/me')
  Future<User> getUser();

  @POST('auth/login')
  Future<AccessTokenDto> login(@Body() LoginRequestModel loginRequestModel);
}