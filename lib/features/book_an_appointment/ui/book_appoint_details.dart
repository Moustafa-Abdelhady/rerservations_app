import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/appoint_info_item.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/summary_page.dart/payment_information_list_tile.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/make_an_appoint_btn.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class BookAppointDetails extends StatelessWidget {
  const BookAppointDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 150.h),
          child: const CustomAppBarWidget(
            text: 'Booking Details',
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: MakeAnAppointmentBtn(
            text: 'Done',
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: SingleChildScrollView(
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
                    subTitle: arguments?['selectedDateTime'].toString() ??
                        'Not Selected',
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
                    subTitle: arguments?['note'] ?? 'Not Selected',
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
                  Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      child: Image.asset(
                        arguments?['docImage'],
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
                          arguments?['doctorInfo']['name'],
                          style: TextStyles.font15DarkBlueMeduim,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(8),
                        Text(
                          '${arguments?['doctorInfo']['specialization'] | arguments?['doctorInfo']['degree']}',
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
                                arguments?['rating'],
                                style: TextStyles.font13DarkBlueregular,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )
                      ],
                    ))
                  ]),
                  verticalSpace(15)
                ],
              )),
        ),
      ),
    );
  }
}
