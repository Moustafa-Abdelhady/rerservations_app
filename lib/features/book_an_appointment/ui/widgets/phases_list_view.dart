import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/three_phase_to_book.dart';

class PhasesListView extends StatefulWidget {
  const PhasesListView({super.key});

  @override
  State<PhasesListView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PhasesListView> {
  final int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: phasesOfAppointList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (cotext, index) {
        return ThreePhasesToBookAppoint(
          number: phasesOfAppointList[index][0],
          text: phasesOfAppointList[index][1],
          textColor:
              _currentPageIndex > index ? Colors.green : ColorsManager.darkBlue,
          color: _currentPageIndex == index
              ? ColorsManager.mainBlue
              : _currentPageIndex > index
                  ? Colors.green
                  : ColorsManager.lighterGrey,
        );
      },
    );
  }
}
