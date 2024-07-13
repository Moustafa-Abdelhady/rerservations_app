import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/styles.dart';

class DocrorsSpecialitySeeAll extends StatelessWidget {
  const DocrorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: TextStyles.font18BlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        )
      ],
    );
  }
}
