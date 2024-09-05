import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

class ThreePhasesToBookAppoint extends StatelessWidget {
  const ThreePhasesToBookAppoint(
      {super.key,
      required this.number,
      required this.text,
      this.color,
      this.textColor});

  final String number, text;
  final Color? color, textColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: SizedBox(
            width: 85.w,
            child: Column(
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: color,
                  ),
                  child: Center(
                    child: Text(
                      number,
                      style: TextStyles.font12BlueRegular.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                verticalSpace(8),
                Text(
                  text,
                  style: TextStyles.font12BlueRegular.copyWith(
                    color: textColor ?? ColorsManager.darkBlue,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ),
    );
  }
}

List<List<String>> phasesOfAppointList = [
  [
    '1',
    'Date & Time',
  ],
  [
    '2',
    'Payment Method',
  ],
  [
    '3',
    'Summary',
  ],
];
