import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account ? ',
            style: TextStyles.font13DarkBlueregular,
          ),
          TextSpan(
            text: 'Login ',
            style: TextStyles.font13lueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          )
        ],
      ),
    );
  }
}
