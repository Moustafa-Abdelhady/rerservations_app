import 'package:flutter/material.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/make_an_appoint_btn.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';

class DoctorAboutTabBar extends StatelessWidget {
  const DoctorAboutTabBar({super.key, this.doctorsAbout});
  final Doctors? doctorsAbout;
  @override
  Widget build(
    BuildContext context,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            textRech('Name : ', doctorsAbout?.name),
            verticalSpace(10),
            textRech('City : ', doctorsAbout?.city!.cityName),
            verticalSpace(10),
            textRech('Gender : ', doctorsAbout?.gender),
            verticalSpace(10),
            textRech('Mail : ', doctorsAbout?.email),
            verticalSpace(10),
            textRech('Degree : ', doctorsAbout?.degree),
            verticalSpace(10),
            textRech('Start time : ', doctorsAbout?.startTime),
            verticalSpace(10),
            textRech('End time : ', doctorsAbout?.endTime),
            verticalSpace(30),
            Center(
              child: MakeAnAppointmentBtn(
                text: 'Make An Appointment',
                onPressed: () {
                  context.pushNamed(Routes.bookAppointment,
                      arguments: doctorsAbout);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textRech(String? title, String? text) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: title,
        style: TextStyles.font15BlueMeduim,
      ),
      TextSpan(
        text: text,
        style: TextStyles.font15DarkBlueBold,
      ),
    ]));
  }
}
