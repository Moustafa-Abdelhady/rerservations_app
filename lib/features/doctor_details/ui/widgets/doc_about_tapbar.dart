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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(10),
          Text(
            'Name : ${doctorsAbout?.name}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(10),
          Text(
            'City : ${doctorsAbout?.city!.cityName}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(10),
          Text(
            'Gender : ${doctorsAbout?.gender}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(10),
          Text(
            'Mail : ${doctorsAbout?.email}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(10),
          Text(
            'Degree : ${doctorsAbout?.degree}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(10),
          Text(
            'Start time : ${doctorsAbout?.startTime}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(10),
          Text(
            'End time : ${doctorsAbout?.endTime}',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(60),
          Center(
            child: MakeAnAppointmentBtn(
              text: 'Make An Appointment',
              onPressed: () {
                context.pushNamed(Routes.bookAppointment,
                    arguments: doctorsAbout);
              },
            ),
          )
        ],
      ),
    );
  }
}
