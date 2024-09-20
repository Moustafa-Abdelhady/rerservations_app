import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/book_appointment_body.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorInfo = ModalRoute.of(context)?.settings.arguments as Doctors?;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12.w, right: 12.w),
          child: BookAppointmentBody(
            doctorInfo: doctorInfo,
          ),
        ),
      ),
    );
  }
}
