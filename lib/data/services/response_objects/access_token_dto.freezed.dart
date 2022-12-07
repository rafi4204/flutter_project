// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'access_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenDto _$AccessTokenDtoFromJson(Map<String, dynamic> json) {
  return _AccessTokenDto.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenDto {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenDtoCopyWith<AccessTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenDtoCopyWith<$Res> {
  factory $AccessTokenDtoCopyWith(
          AccessTokenDto value, $Res Function(AccessTokenDto) then) =
      _$AccessTokenDtoCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AccessTokenDtoCopyWithImpl<$Res>
    implements $AccessTokenDtoCopyWith<$Res> {
  _$AccessTokenDtoCopyWithImpl(this._value, this._then);

  final AccessTokenDto _value;
  // ignore: unused_field
  final $Res Function(AccessTokenDto) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccessTokenDtoCopyWith<$Res>
    implements $AccessTokenDtoCopyWith<$Res> {
  factory _$$_AccessTokenDtoCopyWith(
          _$_AccessTokenDto value, $Res Function(_$_AccessTokenDto) then) =
      __$$_AccessTokenDtoCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$_AccessTokenDtoCopyWithImpl<$Res>
    extends _$AccessTokenDtoCopyWithImpl<$Res>
    implements _$$_AccessTokenDtoCopyWith<$Res> {
  __$$_AccessTokenDtoCopyWithImpl(
      _$_AccessTokenDto _value, $Res Function(_$_AccessTokenDto) _then)
      : super(_value, (v) => _then(v as _$_AccessTokenDto));

  @override
  _$_AccessTokenDto get _value => super._value as _$_AccessTokenDto;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_AccessTokenDto(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessTokenDto extends _AccessTokenDto {
  const _$_AccessTokenDto({required this.token}) : super._();

  factory _$_AccessTokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenDtoFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AccessTokenDto(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessTokenDto &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AccessTokenDtoCopyWith<_$_AccessTokenDto> get copyWith =>
      __$$_AccessTokenDtoCopyWithImpl<_$_AccessTokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenDtoToJson(
      this,
    );
  }
}

abstract class _AccessTokenDto extends AccessTokenDto {
  const factory _AccessTokenDto({required final String token}) =
      _$_AccessTokenDto;
  const _AccessTokenDto._() : super._();

  factory _AccessTokenDto.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenDto.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenDtoCopyWith<_$_AccessTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
