import 'package:flutter/material.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/appoint_info_item.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage(
      {super.key,
      this.selectedDateTime,
      this.note,
      this.doctor,
      this.docImage,
      this.rating,
      this.paymentCost});

  final DateTime? selectedDateTime;
  final String? note;
  final Doctors? doctor;
  final String? docImage;
  final String? rating;
  final String? paymentCost;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Booking Information',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(20),
          AppointInfoItem(
            title: 'Date & Time',
            subTitle: selectedDateTime != null
                ? selectedDateTime.toString()
                : 'Not Selected',
            image: 'assets/svgs/AppointmentTypeBookInfo.svg',
            backGroundColor: ColorsManager.buttonLighterGrey,
          ),
          const Divider(
            color: ColorsManager.grey,
            thickness: .6,
            height: 30,
          ),
          AppointInfoItem(
            title: 'Appointment Type',
            subTitle: note ?? 'Not Selected',
            image: 'assets/svgs/active_appointment.svg',
            backGroundColor: ColorsManager.buttonLighterGrey,
          ),
          const Divider(
            color: ColorsManager.grey,
            thickness: .6,
            height: 30,
          ),
          verticalSpace(9),
          Text(
            'Booking Information',
            style: TextStyles.font15DarkBlueBold,
          ),
        ],
      ),
    );
  }
}
