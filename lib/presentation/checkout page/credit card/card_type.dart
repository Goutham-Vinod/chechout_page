import 'package:checkout_screen_ui/presentation/checkout%20page/credit%20card/credit_card.dart';
import 'package:flutter/material.dart';

class CardType extends StatelessWidget {
  const CardType({
    super.key,
    required this.widget,
    required Animation<Offset> slideInAnimation,
  }) : _slideInAnimation = slideInAnimation;

  final CreditCard widget;
  final Animation<Offset> _slideInAnimation;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipper: CardTypeClipper(
          mediaQueryHeight: widget.height, mediaQueryWidth: widget.width),
      child: SlideTransition(
        position: _slideInAnimation,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: Stack(
            children: [
              Positioned(
                  bottom: widget.height * 0.12,
                  right: widget.width * 0.05,
                  child: Container(
                    width: widget.width * 0.19,
                    height: widget.height * 0.15,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/visa.png'))),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CardTypeClipper extends CustomClipper<Rect> {
  CardTypeClipper(
      {required this.mediaQueryHeight, required this.mediaQueryWidth});

  double mediaQueryWidth;
  double mediaQueryHeight;

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTWH(mediaQueryWidth * 0.7, mediaQueryHeight * 0.725,
        mediaQueryWidth * 0.30, mediaQueryHeight * 0.25);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
