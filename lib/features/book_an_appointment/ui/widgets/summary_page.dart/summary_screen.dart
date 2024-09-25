import 'package:flutter/material.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/appoint_info_item.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/payment_information_list_tile.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({
    super.key,
    this.selectedDateTime,
    this.note,
    this.doctor,
    this.docImage,
    this.rating,
    this.paymentCost,
    this.specializationData,
  });

  final DateTime? selectedDateTime;
  final String? note;
  final Doctors? doctor;
  final SpecializationData? specializationData;
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
          verticalSpace(16),
          Row(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    width: 60,
                    height: 60,
                    doctor?.gender == 'female'
                        ? "https://th.bing.com/th/id/OIP.sIMaRhEHogXQcRyPIRNyMQHaLI?w=2307&h=3467&rs=1&pid=ImgDetMain"
                        : "https://thumbs.dreamstime.com/b/indian-doctor-mature-male-medical-standing-isolated-white-background-handsome-model-portrait-31871541.jpg",
                  )),
              horizontalSpace(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor?.name ?? 'Lucious Ebert',
                    style:
                        TextStyles.font15DarkBlueMeduim.copyWith(fontSize: 17),
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(3),
                  Text(
                    specializationData?.name ?? 'consultant',
                    style: TextStyles.font15GreyRegular,
                  ),
                  verticalSpace(3),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber[400],
                        size: 18,
                      ),
                      horizontalSpace(7),
                      Text(
                        rating ?? '4.5',
                        style: TextStyles.font15GreyRegular,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          verticalSpace(20),
          Text(
            'Payment Information',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(20),
          PaymentInformationListTile(
            title: paymentCost ?? 'Not Selected',
            subTitle: '**** **** **** 3122',
            image: 'assets/svgs/mastercard.svg',
            btnText: 'Change',
            backGroundColor: const Color(0xffF1F1F1),
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Total',
                style: TextStyles.font15DarkBlueBold,
              ),
              Text(
                '\$${doctor?.price}' ?? '\$ 200',
                style: TextStyles.font15DarkBlueMeduim.copyWith(fontSize: 16),
              ),
            ],
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
