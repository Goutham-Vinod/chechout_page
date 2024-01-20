
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/custom_text_form_field.dart';

class CardInputForm extends StatefulWidget {
  const CardInputForm({
    Key? key,
    required this.creditCardWidth,
    required this.creditCardHeight,
    required this.cardIndex,
  }) : super(key: key);

  final double creditCardWidth;
  final double creditCardHeight;

  final int cardIndex;

  @override
  State<CardInputForm> createState() => _CardInputFormState();
}

class _CardInputFormState extends State<CardInputForm> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController securityCodeController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();
  final TextEditingController expDateController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();

  updateCreditCardDetails() {
    BlocProvider.of<CheckOutPageBloc>(context)
        .add(CheckOutPageEvent.addCreditCard(
      cardNumber: cardNumberController.text,
      cardHolder: cardHolderController.text,
      expDate: expDateController.text,
      securityCode: securityCodeController.text,
      zipCode: zipCodeController.text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //  -----------------------------   line 1 -------------------------------------
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
                width: widget.creditCardWidth * 0.44 * 1.28,
                height: widget.creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: cardNumberController,
                  enableCreditCardNumberFormatting: true,
                  keyboardType: TextInputType.number,
                  onChanged: () {
                    updateCreditCardDetails();
                  },
                )),
            SizedBox(width: widget.creditCardWidth * 0.05 * 1.28),
            SizedBox(
                width: widget.creditCardWidth * 0.16 * 1.28,
                height: widget.creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: securityCodeController,
                  keyboardType: TextInputType.number,
                  maxInputLength: 3,
                  onChanged: () {
                    updateCreditCardDetails();
                  },
                )),
          ],
        ),
        // -----------------------------------------------------------------------------
        SizedBox(height: widget.creditCardHeight * 0.015 * 4),
        //  -----------------------------   line 2 -------------------------------------
        const Text(
          'Card Holder',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
            width: widget.creditCardWidth * 0.44 * 1.28,
            height: widget.creditCardHeight * 0.032 * 4,
            child: CustomTextFormField(
              controller: cardHolderController,
              keyboardType: TextInputType.name,
              onChanged: () {
                updateCreditCardDetails();
              },
            )),

        // -----------------------------------------------------------------------------
        SizedBox(height: widget.creditCardHeight * 0.015 * 4),
        //  -----------------------------   line 3 -------------------------------------
        Row(
          children: [
            const Text(
              'Exp. Date',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: widget.creditCardWidth * 0.13 * 1.28),
            const Text(
              'Zip Code',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),

        Row(
          children: [
            SizedBox(
                width: widget.creditCardWidth * 0.2 * 1.28,
                height: widget.creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: expDateController,
                  enableCreditCardExpDateFormatting: true,
                  keyboardType: TextInputType.number,
                  hintText: ' MM/YY',
                  onChanged: () {
                    updateCreditCardDetails();
                  },
                )),
            SizedBox(width: widget.creditCardWidth * 0.07 * 1.28),
            SizedBox(
                width: widget.creditCardWidth * 0.15 * 1.28,
                height: widget.creditCardHeight * 0.032 * 4,
                child: CustomTextFormField(
                  controller: zipCodeController,
                  keyboardType: TextInputType.number,
                  maxInputLength: 5,
                  onChanged: () {
                    updateCreditCardDetails();
                  },
                )),
          ],
        ),
        // -----------------------------------------------------------------------------
      ],
    );
  }
}
