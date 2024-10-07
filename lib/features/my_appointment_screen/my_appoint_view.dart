import 'package:flutter/material.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';

class MyAppointView extends StatelessWidget {
  const MyAppointView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            CustomAppBarWidget(
              text: 'My Appoint',
            ),
          ],
        ),
      )),
    );
  }
}