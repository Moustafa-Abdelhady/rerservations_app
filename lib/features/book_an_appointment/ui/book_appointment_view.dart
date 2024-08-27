import 'package:flutter/material.dart';

class BookAppointmentView extends StatefulWidget {
  const BookAppointmentView({super.key});

  @override
  State<BookAppointmentView> createState() => _BookAppointmentViewState();
}

class _BookAppointmentViewState extends State<BookAppointmentView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(100, 40),
            child: Row(
              children: [
                Icon(Icons.access_alarm),
              ],
            )),
        body: Center(
          child: Text('book Your Appointment'),
        ),
      ),
    );
  }
}
