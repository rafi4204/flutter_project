import 'package:flutter_template/data/model/auth/auth_tokens.dart';
import 'package:flutter_template/domain/entities/access_token.dart';
import 'package:flutter_template/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_dto.freezed.dart';

part 'access_token_dto.g.dart';

// ignore: non_constant_identifier_names
@freezed
class AccessTokenDto with _$AccessTokenDto {
  const AccessTokenDto._();

  const factory AccessTokenDto({
    required String token,
  }) = _AccessTokenDto;

  factory AccessTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenDtoFromJson(json);
}