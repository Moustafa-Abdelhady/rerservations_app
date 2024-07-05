import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/app_regex.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/widgets/custom_form_field.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:reservations_app/features/login/ui/widgets/password_validations.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObsecureText = true;
  bool isPasswordConfirmationObsecureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerPassword();
  }

  void setupPasswordControllerPassword() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppFormField(
            controller: context.read<SignupCubit>().nameController,
            hintText: 'Name',
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Please enter a valid name';
              }
            },
          ),
          verticalSpace(18),
          AppFormField(
            controller: context.read<SignupCubit>().phoneController,
            hintText: 'Phone number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
          ),
          verticalSpace(18),
          AppFormField(
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(18),
          AppFormField(
            controller: context.read<SignupCubit>().passwordController,
            hintText: 'Password',
            isAbsecureText: isPasswordObsecureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObsecureText = !isPasswordObsecureText;
                });
              },
              child: Icon(
                isPasswordObsecureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(18),
          AppFormField(
            controller:
                context.read<SignupCubit>().passwordConfirmationController,
            hintText: 'Password Confirmation',
            isAbsecureText: isPasswordConfirmationObsecureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObsecureText =
                      !isPasswordConfirmationObsecureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObsecureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialChar: hasSpecialChar,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength)
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
