import 'package:flutter/material.dart';

class OtherCharges extends StatelessWidget {
  const OtherCharges({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('Subtotal'),
            SizedBox(height: height * 0.015),
            const Text('Shipping'),
            SizedBox(height: height * 0.015),
            const Text('Tax'),
            SizedBox(height: height * 0.015),
          ],
        ),
        SizedBox(width: width * 0.15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text("\$71.97"),
            SizedBox(height: height * 0.015),
            const Text("\$9.99"),
            SizedBox(height: height * 0.015),
            const Text("\$8.64"),
            SizedBox(height: height * 0.015),
          ],
        ),
      ],
    );
  }
}
