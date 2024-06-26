import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:reservations_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:reservations_app/features/onboarding/widgets/get_started_botton.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DocImageAndText(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font13GreyRegular,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: GetStartedButton(),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
