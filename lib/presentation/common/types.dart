import 'package:firebase_auth/firebase_auth.dart';

typedef void PhoneVerificationCompleted(AuthCredential phoneAuthCredential);
typedef void PhoneVerificationFailed(FirebaseAuthException exception);
typedef void PhoneCodeSent(String verificationId, [int forceResendingToken]);
typedef void PhoneCodeAutoRetrievalTimeout(String verificationId);
