import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.g.dart';

part 'access_token.freezed.dart';

@freezed
class AccessToken with _$AccessToken {
  const AccessToken._();

  const factory AccessToken({
    required String access_token,
    required String type,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);
}
