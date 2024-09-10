import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/three_phase_to_book.dart';

class PhasesListView extends StatefulWidget {
  const PhasesListView({super.key, required this.currentPageIndex});

  final int currentPageIndex;

  @override
  State<PhasesListView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PhasesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: phasesOfAppointList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (cotext, index) {
        return ThreePhasesToBookAppoint(
          number: phasesOfAppointList[index][0],
          text: phasesOfAppointList[index][1],
          textColor: widget.currentPageIndex > index
              ? Colors.green
              : ColorsManager.darkBlue,
          color: widget.currentPageIndex == index
              ? ColorsManager.mainBlue
              : widget.currentPageIndex > index
                  ? Colors.green
                  : ColorsManager.lighterGrey,
        );
      },
    );
  }
}
