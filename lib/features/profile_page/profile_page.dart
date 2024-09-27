import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/bottom_navigation_bar.dart';
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
      body: const SafeArea(
          child: const SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: const Column(
          children: [
            const CustomAppBarWidget(
              text: 'Profile',
            ),
          ],
        ),
      )),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
