import 'package:flutter/material.dart';
import 'package:reservations_app/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          // color: Colors.amber,
          width: double
              .infinity, // this is cause i will make a column and the column takes full heigh by default but not takes full width
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
            ],
          ),
        ),
      ),
    );
  }
}
