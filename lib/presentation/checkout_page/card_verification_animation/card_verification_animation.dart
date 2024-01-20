import 'package:checkout_screen_ui/application/bloc/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/card_verification_animation/loading_animation.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/card_verification_animation/verification_sucess.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardVerificationAnimation extends StatelessWidget {
  const CardVerificationAnimation({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckOutPageBloc, CheckOutPageState>(
      builder: (context, state) {
        String verificationStatus = state.isCardVerificationSuccess == true
            ? 'Successfully Added!'
            : 'verifying you card';
        return Visibility(
          visible: state.isCardVerificationInitiated ?? false,
          child: Container(
            height: height,
            width: width,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Constants.greenColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                    bottom: height * 0.06,
                    right: width * 0.25,
                    child: Text(
                      verificationStatus,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                LoadingAnimation(height: height, width: width),
                VerificationSuccess(width: width, height: height),
              ],
            ),
          ),
        );
      },
    );
  }
}
