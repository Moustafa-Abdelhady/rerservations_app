import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/core/widgets/custom_button.dart';
import 'package:reservations_app/features/login/data/models/login_request_body.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:reservations_app/features/login/ui/widgets/do_not_have_account_text.dart';
import 'package:reservations_app/features/login/ui/widgets/email_and_pass.dart';
import 'package:reservations_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:reservations_app/features/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font15GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13lueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        checkLoginValidate(context);
                      },
                    ),
                    verticalSpace(30),
                    const TermsAndConditionsText(),
                    verticalSpace(80),
                    const DoNotHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLoginValidate(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();

      // context.read<LoginCubit>().emitLoginState(
      //       LoginRequestBody(
      //         email: context.read<LoginCubit>().emailController.text,
      //         password: context.read<LoginCubit>().passwordController.text,
      //       ),
      //     );
    }
  }
}
