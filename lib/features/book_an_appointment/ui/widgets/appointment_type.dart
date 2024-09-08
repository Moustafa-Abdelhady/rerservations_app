import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/appoint_type_item.dart';

class AppointmentType extends StatefulWidget {
  const AppointmentType({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  State<AppointmentType> createState() => _AppointmentTypeState();
}

class _AppointmentTypeState extends State<AppointmentType> {
  String selectedAppointmentType = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppointmentTypeItem(
          title: 'In Person',
          value: 'In Person',
          image: 'assets/svgs/inperson.svg',
          backgroundColor: ColorsManager.buttonLighterGrey,
          groupValue: selectedAppointmentType,
          onChanged: (val) {
            setState(() {
              selectedAppointmentType = val!;
              widget.onChanged(val);
            });
          },
        ),
        const Divider(
          color: ColorsManager.lighterGrey,
        ),
        AppointmentTypeItem(
          title: 'Video Call',
          value: 'Video Call',
          image: 'assets/svgs/VideoCallAppointment.svg',
          backgroundColor: ColorsManager.buttonLighterGrey,
          groupValue: selectedAppointmentType,
          onChanged: (val) {
            setState(() {
              selectedAppointmentType = val!;
              widget.onChanged(val);
            });
          },
        ),
        const Divider(
          color: ColorsManager.lighterGrey,
        ),
        AppointmentTypeItem(
          title: 'Phone Call',
          value: 'Phone Call',
          image: 'assets/svgs/call.svg',
          backgroundColor: ColorsManager.buttonLighterGrey,
          groupValue: selectedAppointmentType,
          onChanged: (val) {
            setState(() {
              selectedAppointmentType = val!;
              widget.onChanged(val);
            });
          },
        ),
        const Divider(
          color: ColorsManager.lighterGrey,
        )
      ],
    );
  }
}
