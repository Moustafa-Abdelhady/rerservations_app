import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

class AvailableTimeSelection extends StatefulWidget {
  const AvailableTimeSelection({super.key, this.onChanged});

  final ValueChanged<String>? onChanged;

  @override
  State<AvailableTimeSelection> createState() => _AvailableTimeSelectionState();
}

class _AvailableTimeSelectionState extends State<AvailableTimeSelection> {
  String selectedTime = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Available time',
          style: TextStyles.font15DarkBlueBold,
        ),
        verticalSpace(24.h),
        SizedBox(
          height: 170.h,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 3.3,
              ),
              itemCount: timeForAvailable.length,
              itemBuilder: (context, index) {
                String time = timeForAvailable[index];
                bool isSelectedTime = time == selectedTime;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTime = time;
                    });
                    widget.onChanged?.call(time);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isSelectedTime
                          ? ColorsManager.mainBlue
                          : ColorsManager.buttonLighterGrey,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(
                      time,
                      style: isSelectedTime
                          ? const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)
                          : TextStyles.font15DarkBlueBold,
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  List<String> timeForAvailable = const [
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
  ];
}
