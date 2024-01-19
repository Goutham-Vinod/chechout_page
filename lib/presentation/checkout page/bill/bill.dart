import 'package:checkout_screen_ui/domain/models/dummyItems.dart';
import 'package:checkout_screen_ui/presentation/checkout%20page/bill/other_charges.dart';
import 'package:flutter/material.dart';

import 'items_list.dart';

class Bill extends StatelessWidget {
  const Bill({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.48,
      width: width * 0.85,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Order Details',
            style: TextStyle(fontSize: 22.5),
          ),
          const SizedBox(height: 10),
          // ---------------  Section 1 (Carted Items List) --------------------
          ItemsList(
            cartItems: DummyItems.cartItems,
          ),
          // -------------------------------------------------------------------
          const Divider(),
          // ----------------   Section 2 (Other Charges)   --------------------
          OtherCharges(height: height, width: width),

          // -------------------------------------------------------------------
          const Divider(),

          // ------------------- Section 3 (Total) -----------------------------
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(width: 30),
              Text(
                '\$90.60',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          )
          // -------------------------------------------------------------------
        ],
      ),
    );
  }
}
