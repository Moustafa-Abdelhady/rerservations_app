import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/core/themes/app_colors.dart';
import 'package:reservations_app/core/themes/styles.dart';
import 'package:reservations_app/features/book_an_appointment/ui/widgets/payment_screens/payment_option.item.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String _selectedPayment = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Option',
            style: TextStyles.font15DarkBlueBold,
          ),
          verticalSpace(12),
          PaymentOptionItem(
            optionText: 'Credit Card',
            value: 'Master Card',
            groupValue: _selectedPayment,
            onChanged: (val) {
              setState(() {
                _selectedPayment = val!;
              });
              widget.onChanged(val!);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SvgPicture.asset('assets/svgs/mastercard.svg'),
                horizontalSpace(8),
                Text(
                  'Master Card',
                  style:
                      TextStyles.font13DarkBlueregular.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
          const Divider(
            color: ColorsManager.grey,
            thickness: .5,
            indent: 35,
            endIndent: 30,
            height: 40,
          ),
          PaymentOptionItem(
            optionText: 'Bank Transfer',
            value: 'Bank Transfer',
            groupValue: _selectedPayment,
            onChanged: (val) {
              setState(() {
                _selectedPayment = val!;
              });
              widget.onChanged(val!);
            },
          ),
          PaymentOptionItem(
            optionText: 'Paypal',
            value: 'Paypal',
            groupValue: _selectedPayment,
            onChanged: (val) {
              setState(() {
                _selectedPayment = val!;
              });
              widget.onChanged(val!);
            },
          ),
        ],
      ),
    );
  }
}
