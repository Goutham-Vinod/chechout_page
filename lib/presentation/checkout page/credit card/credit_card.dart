// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:checkout_screen_ui/core/constants.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/custom_text_form_field.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key,
    required this.height,
    required this.width,
    required this.contentOpacy,
  }) : super(key: key);

  final double height;
  final double width;
  final double contentOpacy;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Constants.greenColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
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
                    width: width * 0.44 * 1.28,
                    height: height * 0.032 * 4,
                    child: const CustomTextFormField()),
                SizedBox(width: width * 0.05 * 1.28),
                SizedBox(
                    width: width * 0.16 * 1.28,
                    height: height * 0.032 * 4,
                    child: const CustomTextFormField()),
              ],
            ),
            // -----------------------------------------------------------------------------
            SizedBox(height: height * 0.015 * 4),
            //  -----------------------------   line 2 -------------------------------------
            const Text(
              'Card Holder',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
                width: width * 0.44 * 1.28,
                height: height * 0.032 * 4,
                child: const CustomTextFormField()),

            // -----------------------------------------------------------------------------
            SizedBox(height: height * 0.015 * 4),
            //  -----------------------------   line 3 -------------------------------------
            Row(
              children: [
                const Text(
                  'Exp. Date',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: width * 0.15 * 1.28),
                const Text(
                  'Zip Code',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                    width: width * 0.2 * 1.28,
                    height: height * 0.032 * 4,
                    child: const CustomTextFormField(
                      hintText: ' MM/YY',
                    )),
                SizedBox(width: width * 0.1 * 1.28),
                SizedBox(
                    width: width * 0.2 * 1.28,
                    height: height * 0.032 * 4,
                    child: const CustomTextFormField()),
              ],
            ),
            // -----------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}
