import 'package:flutter_template/presentation/feature/login/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  factory LoginState({
    required FirebaseAuthModel authModel,
    @Default('') String verificationId,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(
      authModel: FirebaseAuthModel(
          isFailed: false,
          isOtpSent: false,
          verificationId: '',
          errorMessage: '',
          isLoginSuccess: false,
          isLoading: false),
    );
  }

  factory LoginState.FirebaseModel(FirebaseAuthModel? model) {
    return LoginState(
        authModel: model ??
            FirebaseAuthModel(
                isFailed: false,
                isOtpSent: false,
                verificationId: '',
                errorMessage: '',
                isLoginSuccess: false,
                isLoading: false));
  }
}