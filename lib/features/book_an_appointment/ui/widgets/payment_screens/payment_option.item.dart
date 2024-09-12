import 'package:flutter/material.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';

class PaymentOptionItem extends StatelessWidget {
  const PaymentOptionItem(
      {super.key,
      required this.optionText,
      required this.value,
      required this.groupValue,
      this.onChanged});

  final String optionText;
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.comfortable,
      horizontalTitleGap: 5,
      dense: true,
      title: Text(
        optionText,
        style: TextStyles.font15DarkBlueMeduim,
      ),
      leading: Radio(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fillColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        activeColor: ColorsManager.mainBlue,
        visualDensity: VisualDensity.compact,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
