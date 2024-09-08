import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/themes/styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.text,
    this.icon,
    this.color,
  });
  final String text;
  final IconData? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 44.w,
          height: 44.h,
          // decoration: BoxDecoration(
          //   border: Border.all(color: ColorsManager.grey),
          //   borderRadius: BorderRadius.circular(10.r),
          // ),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(
              icon ?? Icons.arrow_back_ios_new,
              size: 24.r,
            ),
          ),
        ),
        Expanded(
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyles.font18DarkBlueBold),
        )
      ],
    );
  }
}
