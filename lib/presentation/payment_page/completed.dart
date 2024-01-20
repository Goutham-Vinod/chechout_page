
import 'package:checkout_screen_ui/presentation/payment_page/zoom_in_animation_icon.dart';
import 'package:checkout_screen_ui/presentation/payment_page/zoom_in_animation_text.dart';
import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomInIcon(),
            SizedBox(height: 15),
            ZoomInAnimationText(
              text: 'Complete!',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }
}
