import 'package:flutter/material.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/routing/routes.dart';

import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;

  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => context.pushNamed(Routes.doctorDetails,
                arguments: doctorsList?[index]),
            child: DoctorsListViewItem(
              doctorsModel: doctorsList?[index],
            ),
          );
        },
      ),
    );
  }
}
