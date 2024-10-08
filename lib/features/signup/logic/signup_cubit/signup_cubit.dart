import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reservations_app/features/signup/data/models/signup_request_body.dart';

import 'package:reservations_app/features/signup/data/reposatory/signup_repo.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_state.dart';

// part 'signup_state.dart';
// part '../cubit/signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    final response = await _signupRepo.signup(SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0));
    response.when(success: (signupResponse) {
      emit(SignupState.signupSuccess(signupResponse));
    }, failure: (apiErrorModel) {
      emit(SignupState.signupError(apiErrorModel));
    });
  }
}
