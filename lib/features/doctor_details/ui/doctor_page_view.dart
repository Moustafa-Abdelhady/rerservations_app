import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class DoctorPageview extends StatefulWidget {
  const DoctorPageview({super.key, this.doctorsInfo});
  final Doctors? doctorsInfo;
  @override
  State<DoctorPageview> createState() => _DoctorPageviewState();
}

class _DoctorPageviewState extends State<DoctorPageview>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 3, vsync: this);

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
            Tab(
              child: Text(
                'Reviews',
                style: TextStyles.font15BlueMeduim,
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: TabBarView(
              controller: tabController,
              children: [
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(widget.doctorsInfo!.name!)],
                )),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('sdfdff'),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('sdfdff'),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
