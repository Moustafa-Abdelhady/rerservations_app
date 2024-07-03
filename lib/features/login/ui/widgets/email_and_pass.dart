import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/widgets/custom_form_field.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObsecureText = true;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    // way to call any thing from cubit => context.read<cubit>().
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppFormField(
            hintText: 'Email',
            validator: (val){
              if
            },
          ),
          verticalSpace(18),
          AppFormField(
            hintText: 'Password',
            isAbsecureText: isObsecureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(
                isObsecureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
