import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: (signupResponse) {
            context.pop();
            showSuccessDialog(context);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Signup Successful'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Congratulations, you have signed up successfully!'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: ColorsManager.mainBlue,
                  disabledForegroundColor: ColorsManager.grey.withOpacity(0.38),
                ),
                onPressed: () {
                  context.pushNamed(Routes.loginScreen);
                },
                child: const Text('Continue'),
              ),
            ],
          );
        });
  }

  void setupErrorState(BuildContext context, error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMeduim,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font15BlueMeduim,
            ),
          ),
        ],
      ),
    );
  }
}
