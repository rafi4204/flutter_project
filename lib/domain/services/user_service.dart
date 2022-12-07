import 'package:flutter_template/data/services/response_objects/access_token_dto.dart';

import '../../data/services/request_body/login_request_model.dart';

abstract class UserService {
  Future<AccessTokenDto> login(LoginRequestModel loginRequestModel);
}