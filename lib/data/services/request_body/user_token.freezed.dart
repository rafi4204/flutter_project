// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserToken _$UserTokenFromJson(Map<String, dynamic> json) {
  return _UserToken.fromJson(json);
}

/// @nodoc
mixin _$UserToken {
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTokenCopyWith<UserToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenCopyWith<$Res> {
  factory $UserTokenCopyWith(UserToken value, $Res Function(UserToken) then) =
      _$UserTokenCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class _$UserTokenCopyWithImpl<$Res> implements $UserTokenCopyWith<$Res> {
  _$UserTokenCopyWithImpl(this._value, this._then);

  final UserToken _value;
  // ignore: unused_field
  final $Res Function(UserToken) _then;

  @override
  $Res call({
    Object? idToken = freezed,
  }) {
    return _then(_value.copyWith(
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserTokenCopyWith<$Res> implements $UserTokenCopyWith<$Res> {
  factory _$$_UserTokenCopyWith(
          _$_UserToken value, $Res Function(_$_UserToken) then) =
      __$$_UserTokenCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class __$$_UserTokenCopyWithImpl<$Res> extends _$UserTokenCopyWithImpl<$Res>
    implements _$$_UserTokenCopyWith<$Res> {
  __$$_UserTokenCopyWithImpl(
      _$_UserToken _value, $Res Function(_$_UserToken) _then)
      : super(_value, (v) => _then(v as _$_UserToken));

  @override
  _$_UserToken get _value => super._value as _$_UserToken;

  @override
  $Res call({
    Object? idToken = freezed,
  }) {
    return _then(_$_UserToken(
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserToken with DiagnosticableTreeMixin implements _UserToken {
  const _$_UserToken({@JsonKey(name: 'id_token') required this.idToken});

  factory _$_UserToken.fromJson(Map<String, dynamic> json) =>
      _$$_UserTokenFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String idToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserToken(idToken: $idToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserToken'))
      ..add(DiagnosticsProperty('idToken', idToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserToken &&
            const DeepCollectionEquality().equals(other.idToken, idToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(idToken));

  @JsonKey(ignore: true)
  @override
  _$$_UserTokenCopyWith<_$_UserToken> get copyWith =>
      __$$_UserTokenCopyWithImpl<_$_UserToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserTokenToJson(
      this,
    );
  }
}

abstract class _UserToken implements UserToken {
  const factory _UserToken(
          {@JsonKey(name: 'id_token') required final String idToken}) =
      _$_UserToken;

  factory _UserToken.fromJson(Map<String, dynamic> json) =
      _$_UserToken.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserTokenCopyWith<_$_UserToken> get copyWith =>
      throw _privateConstructorUsedError;
}
