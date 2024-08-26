import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class DoctorCoverImage extends StatefulWidget {
  const DoctorCoverImage({super.key, required this.gender});

  final String? gender;

  @override
  State<DoctorCoverImage> createState() => _DoctorCoverImageState();
}

class _DoctorCoverImageState extends State<DoctorCoverImage> {
  @override
  Widget build(BuildContext context) {
    bool isFav = false;
    return Container(
        height: 250.h,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
          color: ColorsManager.lightBlue,
          // border:
          //     Border.all(color: ConstColors.kgreyeColor),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CachedNetworkImage(
              width: 200,
              height: 200.h,
              fit: BoxFit.contain,
              imageUrl: widget.gender == 'female'
                  ? "https://th.bing.com/th/id/OIP.sIMaRhEHogXQcRyPIRNyMQHaLI?w=2307&h=3467&rs=1&pid=ImgDetMain"
                  : "https://thumbs.dreamstime.com/b/indian-doctor-mature-male-medical-standing-isolated-white-background-handsome-model-portrait-31871541.jpg",
              // fit: BoxFit.contain,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Shimmer.fromColors(
                  baseColor: ColorsManager.lighterGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 200.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                  ),
                );
              },
              imageBuilder: (context, imageProvider) => Container(
                width: 200.w,
                height: 200.h,
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
            Align(
              alignment: AlignmentDirectional.topStart,
              child: CircleAvatar(
                backgroundColor: const Color(0xffdddddd),
                child: IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFav == false
                          ? Colors.white
                          : ColorsManager.mainBlue,
                    )),
              ),
            ),
          ],
        ));
  }
}
