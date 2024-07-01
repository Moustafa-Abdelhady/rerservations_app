import 'package:flutter/material.dart';
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
            text: 'Already have an account yet? ',
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(text: 'Sign Up ', style: TextStyles.font13lueSemiBold)
        ],
      ),
    );
  }
}
