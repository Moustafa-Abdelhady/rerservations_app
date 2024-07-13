import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mostafa!',
              style: TextStyles.font18BlueBold,
            ),
            Text(
              'How Are You Today?',
              style: TextStyles.font13greyRegular,
            ),
          ],
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: ColorsManager.buttonLighterGrey,
          radius: 24,
          child: Stack(
            children: [
              // Icon(''),
              ],
          ),
        )
      ],
    );
  }
}
