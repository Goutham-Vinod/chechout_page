
import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditCardInputFormLine1 extends StatelessWidget {
  const CreditCardInputFormLine1({
    super.key,
    required this.creditCardWidth,
    required this.creditCardHeight,
    required this.cardNumberController,
    required this.cardIndex,
    required this.securityCodeController,
  });

  final double creditCardWidth;
  final double creditCardHeight;
  final TextEditingController cardNumberController;
  final int cardIndex;
  final TextEditingController securityCodeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Credit Card Number',
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Text(
              'Security Code',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: creditCardWidth * 0.44 * 1.28,
                height: creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: cardNumberController,
                  enableCreditCardNumberFormatting: true,
                  keyboardType: TextInputType.number,
                  onChanged: () {
                    BlocProvider.of<CheckOutPageBloc>(context).add(
                        CheckOutPageEvent.updateCreditCardDetails(
                            index: cardIndex,
                            cardNumber: cardNumberController.text));
                  },
                )),
            SizedBox(width: creditCardWidth * 0.05 * 1.28),
            SizedBox(
                width: creditCardWidth * 0.16 * 1.28,
                height: creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: securityCodeController,
                  keyboardType: TextInputType.number,
                  maxInputLength: 3,
                  onChanged: () {
                    BlocProvider.of<CheckOutPageBloc>(context).add(
                        CheckOutPageEvent.updateCreditCardDetails(
                            index: cardIndex,
                            cardNumber: securityCodeController.text));
                  },
                )),
          ],
        ),
      ],
    );
  }
}
