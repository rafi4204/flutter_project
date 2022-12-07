import 'package:flutter_template/data/services/request_body/login_request_model.dart';
import 'package:flutter_template/data/services/response_objects/access_token_dto.dart';
import 'package:flutter_template/domain/common/use_case.dart';
import 'package:flutter_template/domain/services/user_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAuthTokenUsecase
    implements UseCase<LoginRequestModel, Future<AccessTokenDto>> {
  final UserService userService;

  GetAuthTokenUsecase(this.userService);

  @override
  Future<AccessTokenDto> run(LoginRequestModel loginRequestModel) {
    return userService.login(loginRequestModel);
  }
}