import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/core/widgets/custom_button.dart';
import 'package:reservations_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:reservations_app/features/signup/ui/widgets/already_have_account.dart';
import 'package:reservations_app/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:reservations_app/features/signup/ui/widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 50.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font15GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Create Account',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        checkSignupValidate(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkSignupValidate(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
