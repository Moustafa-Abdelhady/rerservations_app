import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reservations_app/core/helpers/constants.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/helpers/shared_pref_helper.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/routing/routes.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({super.key});

  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {
  String? name;

  userName() async {
    name = await SharedPrefHelper.getString(SharedPrefKeys.userName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, $name !',
              style: TextStyles.font18BlueBold,
            ),
            Text(
              'How Are You Today?',
              style: TextStyles.font13greyRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorsManager.buttonLighterGrey,
          radius: 24,
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.searchScreen);
            },
            child: SvgPicture.asset(
              'assets/svgs/notfication_bill.svg',
              fit: BoxFit.fill,
              width: 25.w,
            ),
          ),
        ),
        horizontalSpace(10),
        GestureDetector(
          onTap: () async {
            await SharedPrefHelper.removeData(SharedPrefKeys.userName);
            await SharedPrefHelper.clearAllSecuredData();
            context.pushNamedAndRemoveUntil(Routes.loginScreen,
                predicate: (route) => false);
          },
          child: const Icon(Icons.logout),
        )
      ],
    );
  }
}
