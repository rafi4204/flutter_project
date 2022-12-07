
import 'package:freezed_annotation/freezed_annotation.dart';

import '../login/firebase_auth.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  factory HomeState({
    required FirebaseAuthModel authModel,
    @Default('') String verificationId,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      authModel: FirebaseAuthModel(
          isFailed: false,
          isOtpSent: false,
          verificationId: '',
          errorMessage: '',
          isLoginSuccess: false,
          isLoading: false),
    );
  }


}