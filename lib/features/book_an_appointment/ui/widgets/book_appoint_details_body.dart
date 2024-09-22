import 'package:flutter/material.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/appoint_info_item.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/payment_information_list_tile.dart';

class BookAppointDetailsBody extends StatelessWidget {
  const BookAppointDetailsBody({super.key, required this.docDetails});

  final Map<String, dynamic>? docDetails;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(25),
            const Align(
              child: Icon(
                Icons.check_circle_rounded,
                color: Colors.green,
                size: 70,
              ),
            ),
            verticalSpace(27),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Booking Confirmed',
                style: TextStyles.font18DarkBlueBold,
              ),
            ),
            verticalSpace(50),
            Text(
              'Booking Information',
              style: TextStyles.font15DarkBlueBold,
            ),
            verticalSpace(20),
            AppointInfoItem(
              title: 'Date & Time',
              subTitle:
                  docDetails?['selectedDateTime'].toString() ?? 'Not Selected',
              image: 'assets/svgs/ScheduleChanged.svg',
              backGroundColor: ColorsManager.buttonLighterGrey,
            ),
            const Divider(
              color: ColorsManager.grey,
              thickness: .6,
              height: 30,
            ),
            PaymentInformationListTile(
              title: 'Appointment Type',
              subTitle: docDetails?['note'] ?? 'Not Selected',
              image: 'assets/svgs/AppointmentTypeBookInfo.svg',
              backGroundColor: ColorsManager.buttonLighterGrey,
              btnText: 'Get Location',
            ),
            const Divider(
              color: ColorsManager.grey,
              thickness: .6,
              height: 30,
            ),
            verticalSpace(10),
            Text(
              'Booking Information',
              style: TextStyles.font15DarkBlueBold,
            ),
            verticalSpace(15),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(12),
                  child: Image.asset(
                    docDetails?['docImage'] ?? 'assets/images/doctor1.png',
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'ooooooooo',
                        // docDetails?['doctorInfo']['name'],
                        style: TextStyles.font15DarkBlueMeduim,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(8),
                      Text(
                        'dooooooooooo',
                        // '${docDetails?['doctorInfo']['specialization']  | docDetails?['doctorInfo']['degree']} ',
                        style: TextStyles.font13DarkBlueregular,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(12),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber[400],
                            size: 16,
                          ),
                          horizontalSpace(6),
                          Expanded(
                            child: Text(
                              docDetails?['rating'] ?? '4.8',
                              style: TextStyles.font13DarkBlueregular,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
