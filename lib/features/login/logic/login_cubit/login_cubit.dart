import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/constants.dart';
import 'package:reservations_app/core/helpers/shared_pref_helper.dart';
import 'package:reservations_app/core/networking/dio_factory.dart';
import 'package:reservations_app/features/login/data/models/login_request_body.dart';
import 'package:reservations_app/features/login/data/reposatory/login_repo.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_state.dart';

// part '../cubit/login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.loginLoading());

    final response = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));

    response.when(
      success: (loginResponse) async {
        await saveUserToken(
          loginResponse.userData?.token ?? '',
          loginResponse.userData?.userName ?? 'User',
        );
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginError(apiErrorModel));
      },
    );
  }

  Future<void> saveUserToken(String token, String name) async {
    // save token to shared Preferences
    await SharedPrefHelper.setData(SharedPrefKeys.userName, name);
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
