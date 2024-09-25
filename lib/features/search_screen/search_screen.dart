import 'package:flutter/material.dart';
import 'package:reservations_app/core/widgets/custom_app_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            CustomAppBarWidget(
              text: 'Search about Doctors',
            )
          ],
        ),
      )),
    );
  }
}
