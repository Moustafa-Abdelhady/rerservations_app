import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/select_date.dart';

class DateAndTimePage extends StatelessWidget {
  const DateAndTimePage(
      {super.key,
      this.onDateTimeChanged,
      this.onDateTimeConfirm,
      required this.onNoteChanged});

  final dynamic Function(DateTime)? onDateTimeChanged;
  final dynamic Function(DateTime)? onDateTimeConfirm;
  final void Function(String) onNoteChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select Date',
                style: TextStyles.font15DarkBlueBold,
              ),
              InkWell(
                onTap: () {
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: DateTime.now(),
                      maxTime: DateTime(2025, 3, 3),
                      onChanged: onDateTimeChanged,
                      onConfirm: onDateTimeConfirm,
                      currentTime: DateTime.now(),
                      locale: LocaleType.en);
                },
                child: Text('Set Manual', style: TextStyles.font13lueSemiBold),
              ),
            ],
          ),
          verticalSpace(24.h),
          const SelectDateWidget(),
        ],
      ),
    );
  }
}
