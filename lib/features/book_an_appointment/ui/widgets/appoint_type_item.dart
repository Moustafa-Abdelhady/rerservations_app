import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

class AppointmentTypeItem extends StatelessWidget {
  const AppointmentTypeItem(
      {super.key,
      required this.title,
      required this.value,
      required this.image,
      this.groupValue,
      required this.backgroundColor,
      this.onChanged});

  final String title;
  final String value;
  final String image;
  final String? groupValue;
  final Color backgroundColor;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        constraints: BoxConstraints(minHeight: 40.h, minWidth: 40.w),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor,
        ),
        child: SvgPicture.asset(image, fit: BoxFit.fill),
      ),
      title: Text(title, style: TextStyles.font15DarkBlueMeduim),
      trailing: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: ColorsManager.mainBlue,
        fillColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
