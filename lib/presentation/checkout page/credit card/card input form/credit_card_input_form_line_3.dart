
import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditCardInputFormLine3 extends StatelessWidget {
  const CreditCardInputFormLine3({
    super.key,
    required this.creditCardWidth,
    required this.creditCardHeight,
    required this.expDateController,
    required this.cardIndex,
    required this.zipCodeController,
  });

  final double creditCardWidth;
  final double creditCardHeight;
  final TextEditingController expDateController;
  final int cardIndex;
  final TextEditingController zipCodeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Exp. Date',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: creditCardWidth * 0.13 * 1.28),
            const Text(
              'Zip Code',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: creditCardWidth * 0.2 * 1.28,
                height: creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: expDateController,
                  enableCreditCardExpDateFormatting: true,
                  keyboardType: TextInputType.number,
                  hintText: ' MM/YY',
                  onChanged: () {
                    BlocProvider.of<CheckOutPageBloc>(context).add(
                        CheckOutPageEvent.updateCreditCardDetails(
                            index: cardIndex,
                            cardNumber: expDateController.text));
                  },
                )),
            SizedBox(width: creditCardWidth * 0.07 * 1.28),
            SizedBox(
                width: creditCardWidth * 0.15 * 1.28,
                height: creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: zipCodeController,
                  keyboardType: TextInputType.number,
                  maxInputLength: 5,
                  onChanged: () {
                    BlocProvider.of<CheckOutPageBloc>(context).add(
                        CheckOutPageEvent.updateCreditCardDetails(
                            index: cardIndex,
                            cardNumber: zipCodeController.text));
                  },
                )),
          ],
        ),
      ],
    );
  }
}
