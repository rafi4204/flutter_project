import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/data/services/request_body/login_request_model.dart';
import 'package:flutter_template/domain/use_cases/get_auth_token_use_case.dart';
import 'package:flutter_template/presentation/feature/login/firebase_auth.dart';
import 'package:flutter_template/presentation/feature/login/firebase_auth_manager.dart';
import 'package:injectable/injectable.dart';

import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final FirebaseAuthManager authManager;
  final GetAuthTokenUsecase getAuthTokenUsecase;

  HomeCubit(
    this.getAuthTokenUsecase,
    this.authManager,
  ) : super(HomeState.initial());


}