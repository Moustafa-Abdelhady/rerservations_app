import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';

class MakeAnAppointmentBtn extends StatelessWidget {
  const MakeAnAppointmentBtn({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: ColorsManager.mainBlue,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      // margin: const EdgeInsetsDirectional.only(start: 24, end: 24, bottom: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.infinity, 52),
          backgroundColor: ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: ColorsManager.lightBlue),
        ),
      ),
    );
  }
}
