import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/themes/app_colors.dart';

class DoctorCoverImage extends StatefulWidget {
  const DoctorCoverImage({super.key});

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
            image: DecorationImage(
              image: AssetImage(
                'assets/images/onboarding_doc.png',
              ),
              fit: BoxFit.fill,
            )),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
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
