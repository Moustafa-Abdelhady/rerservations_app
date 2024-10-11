import 'package:flutter/material.dart';

import 'package:reservations_app/core/helpers/spaces.dart';

import 'package:reservations_app/features/home/ui/widgets/doc_speciality_see_all.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:reservations_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:reservations_app/features/home/ui/widgets/specializations_list/specialization_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(20),
              const DocrorsSpecialitySeeAll(),
              verticalSpace(18),
              const SetupSpecializationBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
