import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

import '../../../data/data_source/doctor_speciality_list_img.dart';

class SpecialityListViewItem extends StatefulWidget {
  final SpecializationData? specializationData;
  final int itemIndex;
  final int selectedIndex;

  const SpecialityListViewItem({
    super.key,
    this.specializationData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  State<SpecialityListViewItem> createState() => _SpecialityListViewItemState();
}

class _SpecialityListViewItemState extends State<SpecialityListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: widget.itemIndex == 0 ? 0 : 24.w,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            widget.itemIndex == widget.selectedIndex
                ? Container(
                    height: 50.h,
                    // width: 60.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsManager.simpledarkBlue,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      // 'assets/svgs/docdoc_logo.svg',
                      doctorSpecialityListImg[widget.itemIndex].img,
                      fit: BoxFit.cover,
                      height: 45.h,
                      // width: 30.w,
                    ),
                  )
                //   })

                : CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorsManager.lightBlue,
                    child: Image.asset(
                      doctorSpecialityListImg[widget.itemIndex].img,
                      height: 35.h,
                      // width: 40.w,
                    ),
                  ),
            verticalSpace(10),
            Text(
              widget.specializationData?.name ?? 'Spcialization',
              style: widget.itemIndex == widget.selectedIndex
                  ? TextStyles.font15DarkBlueBold
                  : TextStyles.font13DarkBlueregular,
            )
          ],
        ),
      ),
    );
  }
}
