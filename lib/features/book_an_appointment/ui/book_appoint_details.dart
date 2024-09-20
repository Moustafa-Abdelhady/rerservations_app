import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/make_an_appoint_btn.dart';

class BookAppointDetails extends StatelessWidget {
  const BookAppointDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
                ],
              )),
        ),
      ),
    );
  }
}
