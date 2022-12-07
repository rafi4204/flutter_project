import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class FirebaseAuthManager {
  final auth = FirebaseAuth.instance;

  Future<void> phoneSignIn(
      String phoneNumber,
      PhoneVerificationCompleted phoneVerificationCompleted,
      PhoneVerificationFailed phoneVerificationFailed,
      PhoneCodeAutoRetrievalTimeout phoneCodeAutoRetrievalTimeout,
      PhoneCodeSent phoneCodeSent) async {
    await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: phoneVerificationCompleted,
        verificationFailed: phoneVerificationFailed,
        codeSent: phoneCodeSent,
        codeAutoRetrievalTimeout: phoneCodeAutoRetrievalTimeout);
  }

  Future<UserCredential> verifyPhone(
      String verificationId, String smsCode) async {
    AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    return auth.signInWithCredential(authCredential);
  }
}