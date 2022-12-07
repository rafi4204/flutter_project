import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/data/services/request_body/login_request_model.dart';
import 'package:flutter_template/domain/use_cases/get_auth_token_use_case.dart';
import 'package:flutter_template/presentation/feature/login/firebase_auth.dart';
import 'package:flutter_template/presentation/feature/login/firebase_auth_manager.dart';
import 'package:injectable/injectable.dart';

import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final FirebaseAuthManager authManager;
  final GetAuthTokenUsecase getAuthTokenUsecase;

  LoginCubit(
    this.getAuthTokenUsecase,
    this.authManager,
  ) : super(LoginState.initial());

  void signIn(String phoneNumber) async {
    emit(state.copyWith(
        authModel: FirebaseAuthModel(
            isFailed: false,
            isOtpSent: false,
            verificationId: '',
            errorMessage: '',
            isLoginSuccess: false,
            isLoading: true)));
    final PhoneVerificationCompleted = (AuthCredential credential) {
      emit(state.copyWith(
          authModel: FirebaseAuthModel(
              isFailed: false,
              isOtpSent: true,
              verificationId: '',
              errorMessage: '',
              isLoginSuccess: false,
              isLoading: false)));
    };
    final PhoneVerificationFailed = (FirebaseAuthException exception) {
      emit(state.copyWith(
          authModel: FirebaseAuthModel(
              isFailed: true,
              isOtpSent: false,
              verificationId: '',
              errorMessage: exception.message.toString(),
              isLoginSuccess: false,
              isLoading: false)));
    };
    final PhoneCodeAutoRetrievalTimeout = (String verificationId) {
      /*emit(state.copyWith(
          authModel: FirebaseAuthModel(
              isFailed: false,
              isOtpSent: true,
              verificationId: '',
              errorMessage: '',
              isLoginSuccess: false,
              isLoading: false)));*/
    };
    final PhoneCodeSent = (String verificationId, int? forceResendingToken) {
      emit(state.copyWith(
          verificationId: verificationId,
          authModel: FirebaseAuthModel(
              isFailed: false,
              isOtpSent: true,
              verificationId: verificationId,
              errorMessage: '',
              isLoginSuccess: false,
              isLoading: false)));
    };
    await authManager.phoneSignIn(phoneNumber, PhoneVerificationCompleted,
        PhoneVerificationFailed, PhoneCodeAutoRetrievalTimeout, PhoneCodeSent);
  }

  void verifyLogin(String smsCode) async {
    emit(state.copyWith(
        authModel: FirebaseAuthModel(
            isFailed: false,
            isOtpSent: false,
            verificationId: '',
            errorMessage: '',
            isLoginSuccess: false,
            isLoading: true)));
    try {
      var res = await authManager.verifyPhone(state.verificationId, smsCode);
      emit(state.copyWith(
          authModel: FirebaseAuthModel(
              isFailed: false,
              isOtpSent: true,
              verificationId: '',
              errorMessage: '',
              isLoginSuccess: true,
              isLoading: true)));
      if (res.user != null) {
        login();
      }
    } on FirebaseAuthException catch (f, e) {
      emit(state.copyWith(
          authModel: FirebaseAuthModel(
              isFailed: true,
              isOtpSent: true,
              verificationId: '',
              errorMessage: f.message ?? 'something went wrong',
              isLoginSuccess: false,
              isLoading: false)));
    }
  }

  void login() async {
    var loginModel =
        const LoginRequestModel(username: 'mor_2314', password: '83r5^_');
    var res = await getAuthTokenUsecase.run(loginModel);
    final verificationId = state.verificationId;

    emit(state.copyWith(
        authModel: FirebaseAuthModel(
            isFailed: res.token.isEmpty ? true : false,
            isOtpSent: true,
            verificationId: verificationId,
            errorMessage:
                !res.token.isEmpty ? 'Login Successfull' : 'Login failed',
            isLoginSuccess: true,
            isLoading: false)));
  }
}