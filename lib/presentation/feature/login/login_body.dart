import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_template/presentation/feature/login/firebase_auth.dart';
import 'package:flutter_template/presentation/resources/resources.dart';

import 'login_cubit.dart';
import 'login_state.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);



  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController phoneNumber = TextEditingController();
  TextEditingController otpCode = TextEditingController();
  String mobileNumber = '';
  String otp = '';
  bool isLoading = false;
  String? verificationId;
  bool isOtpSent = false;

  @override
  void dispose() {
    phoneNumber.dispose();
    otpCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state.authModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.authModel.isFailed) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(state.authModel.errorMessage),
              actions: [
                TextButton(
                  child: Text("Ok"),
                  onPressed: () async {
                    //Navigator.of(builderContext).pop();
                  },
                )
              ],
            );
          } else if (state.authModel.isLoginSuccess) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("Login Successfull"),
              actions: [
                TextButton(
                  child: Text("Ok"),
                  onPressed: () async {
                    //Navigator.of(builderContext).pop();
                  },
                )
              ],
            );
          } else if (state.authModel.isOtpSent) {
            return _getOtpPage(state.authModel);
          } else {
            return _getSelectedPage();
          }
        },
      ),
    );
  }

  Widget _getOtpPage(FirebaseAuthModel model) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: context.colors.primary),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            SvgPicture.asset('assets/images/login_image.svg'),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: otpCode,
              decoration: InputDecoration(
                labelText: 'OTP',
                labelStyle: TextStyle(color: context.colors.primary),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(color: context.colors.primary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(color: context.colors.primary),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(
                    color: context.colors.primary,
                  ),
                ),
              ),
              onChanged: (text) {
                setState(() {
                  otp = text;
                });
              },
            ),
            ElevatedButton(
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: context.colors.primary,
                minimumSize: Size.fromHeight(55),
              ),
              onPressed: phoneNumber.text.isEmpty
                  ? null
                  : () async {
                      context.read<LoginCubit>().verifyLogin(otp);
                    },
            )
          ],
        ));
  }

  Widget _getSelectedPage() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: context.colors.primary),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset('assets/images/login_image.svg'),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: phoneNumber,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              labelStyle: TextStyle(color: context.colors.primary),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(color: context.colors.primary),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(color: context.colors.primary),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(
                  color: context.colors.primary,
                ),
              ),
            ),
            onChanged: (text) {
              setState(() {
                mobileNumber = text;
              });
            },
          ),
          ElevatedButton(
            child: Text('Send verification Code'),
            style: ElevatedButton.styleFrom(
              primary: context.colors.primary,
              minimumSize: Size.fromHeight(55),
            ),
            onPressed: phoneNumber.text.isEmpty
                ? null
                : () async {
                    context.read<LoginCubit>().signIn(phoneNumber.text);
                  },
          )
        ],
      ),
    );
  }
}