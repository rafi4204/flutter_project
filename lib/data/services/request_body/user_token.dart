import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_token.freezed.dart';
part 'user_token.g.dart';

@freezed
class UserToken with _$UserToken {
  const factory UserToken({
    @JsonKey(name: 'id_token') required String idToken,
  }) = _UserToken;

  factory UserToken.fromJson(Map<String, dynamic> json) =>
      _$UserTokenFromJson(json);
}