import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditCardImputFormLine2 extends StatelessWidget {
  const CreditCardImputFormLine2({
    super.key,
    required this.creditCardWidth,
    required this.creditCardHeight,
    required this.cardHolderController,
    required this.cardIndex,
  });

  final double creditCardWidth;
  final double creditCardHeight;
  final TextEditingController cardHolderController;
  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Card Holder',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
            width: creditCardWidth * 0.44 * 1.28,
            height: creditCardHeight * 0.032 * 4,
            child: CustomTextFormField(
              controller: cardHolderController,
              keyboardType: TextInputType.name,
              onChanged: () {
                BlocProvider.of<CheckOutPageBloc>(context).add(
                    CheckOutPageEvent.updateCreditCardDetails(
                        index: cardIndex,
                        cardNumber: cardHolderController.text));
              },
            )),
      ],
    );
  }
}
