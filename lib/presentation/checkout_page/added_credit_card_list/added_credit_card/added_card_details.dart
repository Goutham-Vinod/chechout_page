import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/domain/models/credit_card_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddedCardDetails extends StatelessWidget {
  const AddedCardDetails({
    Key? key,
    required this.creditCardWidth,
    required this.creditCardHeight,
    required this.cardIndex,
  }) : super(key: key);

  final double creditCardWidth;
  final double creditCardHeight;

  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckOutPageBloc, CheckOutPageState>(
      builder: (context, state) {
        CreditCardDetailsModel creditCard = state.creditCards[cardIndex]!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //  -----------------------------   line 1 -------------------------------------
            const Row(
              children: [
                Text(
                  'Credit Card Number',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                    width: creditCardWidth * 0.44 * 1.28,
                    height: creditCardHeight * 0.032 * 4,
                    child: Text(
                      creditCard.cardNumber??'',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            // -----------------------------------------------------------------------------
            SizedBox(height: creditCardHeight * 0.015 * 4),
            //  -----------------------------   line 2 -------------------------------------
            const Text(
              'Card Holder',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(
                width: creditCardWidth * 0.44 * 1.28,
                height: creditCardHeight * 0.032 * 4,
                child: Text(
                creditCard.cardHolder??'',
                  style: TextStyle(color: Colors.white),
                )),

            // -----------------------------------------------------------------------------
            SizedBox(height: creditCardHeight * 0.015 * 4),
            //  -----------------------------   line 3 -------------------------------------
            Row(
              children: [
                const Text(
                  'Exp. Date',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(width: creditCardWidth * 0.12 * 1.28),
                const Text(
                  'Zip Code',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                    width: creditCardWidth * 0.2 * 1.28,
                    height: creditCardHeight * 0.032 * 4,
                    child: Text(
                      creditCard.expDate??'',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(width: creditCardWidth * 0.04),
                SizedBox(
                    width: creditCardWidth * 0.15 * 1.28,
                    height: creditCardHeight * 0.032 * 4,
                    child: Text(
                      creditCard.zipCode??'',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            // -----------------------------------------------------------------------------
          ],
        );
      },
    );
  }
}
