import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
          child: BookAppointmentBody(
            doctorInfo: doctorInfo,
          ),
        ),
      ),
    );
  }
}
