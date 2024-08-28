import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/doctor_details/ui/doctor_cover_image.dart';
import 'package:reservations_app/features/doctor_details/ui/doctor_tapbar_view.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorDetail = ModalRoute.of(context)?.settings.arguments as Doctors?;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          doctorDetail?.name ?? 'sayed',
          style: TextStyles.font18BlueBold,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DoctorCoverImage(
            gender: doctorDetail?.gender,
          ),
          Expanded(
            child: DoctorTabBarView(
              doctorsInfo: doctorDetail,
            ),
          ),
        ],
      ),
    );
  }
}
