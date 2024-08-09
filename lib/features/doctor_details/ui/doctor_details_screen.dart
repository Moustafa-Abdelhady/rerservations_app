import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/doctor_details/ui/doctor_cover_image.dart';
import 'package:reservations_app/features/doctor_details/ui/doctor_page_view.dart';
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
        children: [
          const DoctorCoverImage(),
          Expanded(
            child: DoctorPageview(
              doctorsInfo: doctorDetail,
            ),
          ),
        ],
      ),
    );
  }
}
