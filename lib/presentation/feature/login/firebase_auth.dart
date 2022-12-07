class FirebaseAuthModel {
  bool isFailed;
  bool isOtpSent;
  String verificationId;
  String errorMessage;
  bool isLoginSuccess;
  bool isLoading;

  FirebaseAuthModel(
      {required this.isFailed,
      required this.isOtpSent,
      required this.verificationId,
      required this.errorMessage,
      required this.isLoginSuccess,
      required this.isLoading});
}