// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'access_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) {
  return _AccessToken.fromJson(json);
}

/// @nodoc
mixin _$AccessToken {
  String get access_token => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res>;
  $Res call({String access_token, String type});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res> implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  final AccessToken _value;
  // ignore: unused_field
  final $Res Function(AccessToken) _then;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccessTokenCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$$_AccessTokenCopyWith(
          _$_AccessToken value, $Res Function(_$_AccessToken) then) =
      __$$_AccessTokenCopyWithImpl<$Res>;
  @override
  $Res call({String access_token, String type});
}

/// @nodoc
class __$$_AccessTokenCopyWithImpl<$Res> extends _$AccessTokenCopyWithImpl<$Res>
    implements _$$_AccessTokenCopyWith<$Res> {
  __$$_AccessTokenCopyWithImpl(
      _$_AccessToken _value, $Res Function(_$_AccessToken) _then)
      : super(_value, (v) => _then(v as _$_AccessToken));

  @override
  _$_AccessToken get _value => super._value as _$_AccessToken;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_AccessToken(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessToken extends _AccessToken {
  const _$_AccessToken({required this.access_token, required this.type})
      : super._();

  factory _$_AccessToken.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenFromJson(json);

  @override
  final String access_token;
  @override
  final String type;

  @override
  String toString() {
    return 'AccessToken(access_token: $access_token, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessToken &&
            const DeepCollectionEquality()
                .equals(other.access_token, access_token) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access_token),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_AccessTokenCopyWith<_$_AccessToken> get copyWith =>
      __$$_AccessTokenCopyWithImpl<_$_AccessToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenToJson(
      this,
    );
  }
}

abstract class _AccessToken extends AccessToken {
  const factory _AccessToken(
      {required final String access_token,
      required final String type}) = _$_AccessToken;
  const _AccessToken._() : super._();

  factory _AccessToken.fromJson(Map<String, dynamic> json) =
      _$_AccessToken.fromJson;

  @override
  String get access_token;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenCopyWith<_$_AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}
