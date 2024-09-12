import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reservations_app/core/themes/styles.dart';

class AppointInfoItem extends StatelessWidget {
  const AppointInfoItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.backGroundColor,
      required this.image});

  final String title;
  final String subTitle;
  final Color backGroundColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      dense: true,
      title: Text(
        title,
        style: TextStyles.font15DarkBlueMeduim,
      ),
      subtitle: Text(
        subTitle,
        style: TextStyles.font15GreyRegular,
      ),
      leading: Container(
        constraints: BoxConstraints(minHeight: 40.h, minWidth: 40.w),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backGroundColor,
        ),
        child: SvgPicture.asset(image, fit: BoxFit.fill),
      ),
    );
  }
}
