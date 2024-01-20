// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:checkout_screen_ui/presentation/checkout_page/added_credit_card_list/added_credit_card/added_card_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';

class AddedCreditCard extends StatelessWidget {
  const AddedCreditCard({
    Key? key,
    required this.creditCardIndexNumber,
  }) : super(key: key);

  final int creditCardIndexNumber;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return BlocConsumer<CheckOutPageBloc, CheckOutPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width * 0.85,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Constants.greenColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: AddedCardDetails(
                      creditCardWidth: width * 0.8,
                      creditCardHeight: width * 0.4,
                      cardIndex: creditCardIndexNumber),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
