import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/doc_about_tapbar.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/google_maps_tapbar.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class DoctorTabBarView extends StatefulWidget {
  const DoctorTabBarView({super.key, this.doctorsInfo});
  final Doctors? doctorsInfo;
  @override
  State<DoctorTabBarView> createState() => _DoctorTabBarViewState();
}

class _DoctorTabBarViewState extends State<DoctorTabBarView>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Text(
                'About',
                style: TextStyles.font15BlueMeduim,
              ),
            ),
            Tab(
              child: Text(
                'Location',
                style: TextStyles.font15BlueMeduim,
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: DoctorAboutTabBar(doctorsAbout: widget.doctorsInfo),
              ),
              const GoogleMapsTabBar(),
            ],
          ),
        )
      ],
    );
  }
}
