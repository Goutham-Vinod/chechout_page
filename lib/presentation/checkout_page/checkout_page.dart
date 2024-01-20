import 'package:checkout_screen_ui/core/constants.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/add_a_new_card/add_a_new_card.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/added_credit_card_list/added_credit_card_list.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/bill/bill.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/card_verification_animation/card_verification_animation.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/credit_card/credit_card.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/save_card_button/save_card_button.dart';
import 'package:checkout_screen_ui/presentation/payment_page/payment_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/check_out_page/check_out_page_bloc.dart';
import 'added_credit_card_list/added_credit_card/added_credit_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Check out"),
        automaticallyImplyLeading: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
// --------------------- Section 1 (Credit Cards) ------------------------------
            BlocBuilder<CheckOutPageBloc, CheckOutPageState>(
              builder: (context, state) {
// stackElements are decided here based on the state
// each state is explained at bloc
                List<Widget> stackElements = [];

                if (state.isUserAddingCard == true) {
                  // if a user is going to input card details
                  stackElements = [
                    Align(
                      alignment: Alignment.center,
                      child: CreditCard(
                        height: mediaQueryHeight * 0.26,
                        width: mediaQueryWidth * 0.85,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CardVerificationAnimation(
                          height: mediaQueryHeight * 0.26,
                          width: mediaQueryWidth * 0.85),
                    ),
                    const SaveCardButton(),
                  ];
                } else {
                  // If the user is going to select from saved card
                  List<Widget> carouselElements = [];
                  for (var i = 0; i < state.creditCards.length; i++) {
                    carouselElements
                        .add(AddedCreditCard(creditCardIndexNumber: i));
                  }
                // last card is a button (AddNewCard) to add card
                  carouselElements.add(const AddNewCard());
                  stackElements = [
                    AddedCreditCardList(
                      mediaQueryHeight: mediaQueryHeight,
                      mediaQueryWidth: mediaQueryWidth,
                      carouselElements: carouselElements,
                    )
                  ];
                }

                return Stack(
                  children: stackElements,
                );
              },
            ),
//------------------------------------------------------------------------------
// --------------------- Section 2 (Order Details) -----------------------------
            SizedBox(height: mediaQueryHeight * 0.025),
            const Bill(),
            SizedBox(height: mediaQueryHeight * 0.025),
// --------------------- Section 3 (Pay It button) -----------------------------
            SizedBox(
              width: mediaQueryWidth * 0.6,
              height: mediaQueryHeight * 0.06,
              child: BlocBuilder<CheckOutPageBloc, CheckOutPageState>(
                builder: (context, state) {
                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: state.creditCards.isNotEmpty
                              ? Constants.brownColor
                              : Constants.greyColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        if (state.creditCards.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentPage(
                                    creditCardIndex: state.selectedCardIndex),
                              ));
                        }
                      },
                      child: const Text(
                        "Pay It",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ));
                },
              ),
            ),
//------------------------------------------------------------------------------
          ]),
        ),
      ),
    );
  }
}
