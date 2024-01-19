import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/bill/bill.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/credit_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        title: const Text("Check out"),
        automaticallyImplyLeading: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: mediaQueryHeight * 0.015),
          BlocBuilder<CheckOutPageBloc, CheckOutPageState>(
            builder: (context, state) {
              return CreditCard(
                height: state.creditCardHeight,
                width: state.creditCardWidth,
                contentOpacy: state.creditCardContentOpacy,
              );
            },
          ),
          SizedBox(height: mediaQueryHeight * 0.025),
          const Bill(),
          SizedBox(height: mediaQueryHeight * 0.025),
          SizedBox(
            width: mediaQueryWidth * 0.6,
            height: mediaQueryHeight * 0.06,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.greyColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  BlocProvider.of<CheckOutPageBloc>(context).add(
                    
                      CheckOutPageEvent.creditCardZoomInAnimation(
                          mediaQueryWidth: mediaQueryWidth,
                          mediaQueryHeight: mediaQueryHeight));
                  print('Pay it pressed');
                },
                child: const Text(
                  "Pay It",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        ]),
      ),
    );
  }
}
