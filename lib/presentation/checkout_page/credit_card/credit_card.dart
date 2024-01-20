import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/credit_card/card_input_form.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/credit_card/card_type.dart';
import 'package:flutter/material.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> with TickerProviderStateMixin {
  late AnimationController _cardZoomInController;
  late AnimationController _cardDetailsFadeInController;
  late AnimationController _cardTypeSlideInController;
  late Animation<double> _cardZoomInAnimation;
  late Animation<double> _cardDetailsFadeInAnimation;
  late Animation<Offset> _cardTypeSlideInAnimation;

  @override
  void initState() {
    _cardZoomInController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _cardDetailsFadeInController = AnimationController(
      vsync: this, // Use the same TickerProvider
      duration: const Duration(milliseconds: 1500),
    );
    _cardTypeSlideInController = AnimationController(
      vsync: this, // Use the same TickerProvider
      duration: const Duration(milliseconds: 500),
    );
    _cardZoomInAnimation =
        CurvedAnimation(parent: _cardZoomInController, curve: Curves.easeInOut);
    _cardDetailsFadeInAnimation = CurvedAnimation(
        parent: _cardDetailsFadeInController, curve: Curves.easeInOut);
    _cardTypeSlideInAnimation =
        Tween<Offset>(begin: const Offset(0.0, -0.5), end: Offset.zero)
            .animate(CurvedAnimation(
      parent: _cardTypeSlideInController,
      curve: Curves.easeInOut,
    ));
    _cardZoomInController.forward();
    _cardDetailsFadeInController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _cardZoomInController.dispose();
    _cardDetailsFadeInController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int cardIndex = 0;

    return BlocConsumer<CheckOutPageBloc, CheckOutPageState>(
      listener: (context, state) {
        if (state.cardTypeDetected == 'visa') {
          _cardTypeSlideInController.forward();
        }
      },
      builder: (context, state) {
        bool creditCardDetailsVisibility =
            state.isCardVerificationInitiated == true ? false : true;
        return Visibility(
          visible: creditCardDetailsVisibility,
          child: ScaleTransition(
            scale: _cardZoomInAnimation,
            child: Stack(
              children: [
                Container(
                  height: widget.height,
                  width: widget.width,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Constants.greenColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FadeTransition(
                    opacity: _cardDetailsFadeInAnimation,
                    child: Center(
                      child: CardInputForm(
                          creditCardWidth: widget.width,
                          creditCardHeight: widget.height,
                          cardIndex: cardIndex),
                    ),
                  ),
                ),
                CardType(
                    widget: widget,
                    slideInAnimation: _cardTypeSlideInAnimation),
              ],
            ),
          ),
        );
      },
    );
  }
}
