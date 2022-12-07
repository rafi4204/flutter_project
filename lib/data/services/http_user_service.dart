import 'package:flutter_template/data/services/remote_datasource.dart';
import 'package:flutter_template/data/services/request_body/login_request_model.dart';
import 'package:flutter_template/data/services/response_objects/access_token_dto.dart';
import 'package:flutter_template/data/services/user_local_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../domain/services/user_service.dart';

@LazySingleton(as: UserService)
class HttpUserService extends UserService {
  final RemoteDataSource remoteDataSource;
  final UserLocalDataSource userLocalDataSource;

  HttpUserService(this.remoteDataSource, this.userLocalDataSource);

  @override
  Future<AccessTokenDto> login(LoginRequestModel loginRequestModel) async {
    final accessTokenDto = await remoteDataSource.login(loginRequestModel);
    userLocalDataSource.saveToken(accessTokenDto.token);
    return accessTokenDto;
  }
}