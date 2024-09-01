import 'package:flutter/material.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';

class BookAppointmentBody extends StatelessWidget {
  const BookAppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [CustomAppBarWidget(text: 'Book Appointment')],
    );
  }
}
