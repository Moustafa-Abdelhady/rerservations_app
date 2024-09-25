import 'package:flutter/material.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            CustomAppBarWidget(
              text: 'Profile',
            )
          ],
        ),
      )),
    );
  }
}
