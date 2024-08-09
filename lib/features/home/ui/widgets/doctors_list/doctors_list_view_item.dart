import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;

  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: ColorsManager.lightBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CachedNetworkImage(
            width: 110.w,
            height: 120.h,
            imageUrl:
                "https://th.bing.com/th/id/OIP.sIMaRhEHogXQcRyPIRNyMQHaLI?w=2307&h=3467&rs=1&pid=ImgDetMain",
            // fit: BoxFit.contain,
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: ColorsManager.lighterGrey,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(12.0),
          //   child: Image.asset(
          //     'assets/images/onboarding_doc.png',
          //     width: 100.w,
          //     height: 130.h,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          horizontalSpace(16),
          Expanded(
              child: Column(
            children: [
              Text(
                doctorsModel?.name ?? 'Dr.Randy Wigham',
                style: TextStyles.font18BlueSemiBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctorsModel?.degree} | ${doctorsModel?.phone}' ??
                    'General   |   RSUD Gatot Subroto',
                style: TextStyles.font13greyMeduim,
              ),
              verticalSpace(5),
              Text(
                doctorsModel?.email ?? 'Email@gmail.com',
                style: TextStyles.font13greyMeduim,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
