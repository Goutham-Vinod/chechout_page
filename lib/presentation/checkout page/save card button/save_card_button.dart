import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveCardButton extends StatefulWidget {
  const SaveCardButton({
    super.key,
  });

  @override
  State<SaveCardButton> createState() => _SaveCardButtonState();
}

class _SaveCardButtonState extends State<SaveCardButton>
    with TickerProviderStateMixin {
  late AnimationController _saveButtonZoomOutAnimationController;
  late Animation<double> _saveButtonZoomOutAnimation;

  @override
  void initState() {
    _saveButtonZoomOutAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _saveButtonZoomOutAnimation = Tween<double>(begin: 1, end: 0.25).animate(
        CurvedAnimation(
            parent: _saveButtonZoomOutAnimationController,
            curve: Curves.easeInOut));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<CheckOutPageBloc, CheckOutPageState>(
      listener: (context, state) {
        if (state.isCardVerificationInitiated == true) {
          _saveButtonZoomOutAnimationController.forward();
        }
      },
      builder: (context, state) {
        Color iconBackgroundColor = state.isCardDetailsFilled == true
            ? Constants.brownColor
            : Constants.greyColor;

        double rightInitialPos = width * 0.01;
        double rightFinalPos = width * 0.6;

        double rightPos = state.isCardVerificationInitiated == true
            ? rightFinalPos
            : rightInitialPos;

        return AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            right: rightPos,
            top: height * 0.07,
            child: GestureDetector(
              onTap: () {
                if (state.isCardDetailsFilled == true) {
                  BlocProvider.of<CheckOutPageBloc>(context)
                      .add(const CheckOutPageEvent.verifyCreditCard());
                }
              },
              child: ScaleTransition(
                  scale: _saveButtonZoomOutAnimation,
                  child: Container(
                    width: width * 0.13,
                    height: height * 0.12,
                    decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )),
            ));
      },
    );
  }
}
