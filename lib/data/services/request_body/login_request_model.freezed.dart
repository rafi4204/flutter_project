// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  return _LoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestModel {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestModelCopyWith<LoginRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestModelCopyWith<$Res> {
  factory $LoginRequestModelCopyWith(
          LoginRequestModel value, $Res Function(LoginRequestModel) then) =
      _$LoginRequestModelCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._value, this._then);

  final LoginRequestModel _value;
  // ignore: unused_field
  final $Res Function(LoginRequestModel) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginRequestModelCopyWith<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  factory _$$_LoginRequestModelCopyWith(_$_LoginRequestModel value,
          $Res Function(_$_LoginRequestModel) then) =
      __$$_LoginRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginRequestModelCopyWithImpl<$Res>
    extends _$LoginRequestModelCopyWithImpl<$Res>
    implements _$$_LoginRequestModelCopyWith<$Res> {
  __$$_LoginRequestModelCopyWithImpl(
      _$_LoginRequestModel _value, $Res Function(_$_LoginRequestModel) _then)
      : super(_value, (v) => _then(v as _$_LoginRequestModel));

  @override
  _$_LoginRequestModel get _value => super._value as _$_LoginRequestModel;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginRequestModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequestModel
    with DiagnosticableTreeMixin
    implements _LoginRequestModel {
  const _$_LoginRequestModel({required this.username, required this.password});

  factory _$_LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestModelFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginRequestModel(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginRequestModel'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestModel &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginRequestModelCopyWith<_$_LoginRequestModel> get copyWith =>
      __$$_LoginRequestModelCopyWithImpl<_$_LoginRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestModelToJson(
      this,
    );
  }
}

abstract class _LoginRequestModel implements LoginRequestModel {
  const factory _LoginRequestModel(
      {required final String username,
      required final String password}) = _$_LoginRequestModel;

  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestModel.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestModelCopyWith<_$_LoginRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
