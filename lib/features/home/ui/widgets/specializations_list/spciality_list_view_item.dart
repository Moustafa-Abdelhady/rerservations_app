import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class SpecialityListViewItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/docdoc_logo.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/docdoc_logo.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpace(10),
          Text(
            specializationData?.name ?? 'Spcialization',
            style: itemIndex == selectedIndex
                ? TextStyles.font15DarkBlueBold
                : TextStyles.font13DarkBlueregular,
          )
        ],
      ),
    );
  }
}
