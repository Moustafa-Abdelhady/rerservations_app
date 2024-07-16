import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_spciality_list_view_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationDataList;

  const DoctorSpecialityListView(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(
            specializationData: specializationDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
