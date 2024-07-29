import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
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
                style: TextStyles.font13lueSemiBold,
              ))
        ],
      ),
    );
  }
}
