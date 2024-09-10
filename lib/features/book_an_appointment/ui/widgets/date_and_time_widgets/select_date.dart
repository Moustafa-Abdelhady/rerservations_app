import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';

class SelectDateWidget extends StatelessWidget {
  const SelectDateWidget({super.key, this.onDateChanged});

  final void Function(DateTime)? onDateChanged;

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      activeColor: ColorsManager.mainBlue,
      onDateChange: onDateChanged,
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        dateFormatter: DateFormatter.fullDateDMY(),
        showHeader: false,
      ),
      dayProps: const EasyDayProps(
        todayStyle: DayStyle(
          dayStrStyle: TextStyle(
            // color: ColorsManager.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          dayNumStyle: TextStyle(
            // color: ColorsManager.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            color: ColorsManager.lighterGrey,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        inactiveDayStyle: DayStyle(
          dayStrStyle: TextStyle(
            // color: ColorsManager.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          dayNumStyle: TextStyle(
            // color: ColorsManager.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            color: ColorsManager.buttonLighterGrey,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        dayStructure: DayStructure.dayStrDayNum,
        activeDayStyle: DayStyle(
          dayStrStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          dayNumStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: ColorsManager.mainBlue,
          ),
        ),
      ),
    );
  }
}
