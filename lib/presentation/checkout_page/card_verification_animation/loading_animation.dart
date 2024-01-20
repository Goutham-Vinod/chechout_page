
import 'package:checkout_screen_ui/application/check_out_page/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckOutPageBloc, CheckOutPageState>(
      builder: (context, state) {
        Color dot1Color = Constants.greyColor;
        Color dot2Color = Constants.greyColor;
        Color dot3Color = Constants.greyColor;

        if (state.cardVerificationPercentage != null) {
          if (state.cardVerificationPercentage! >= 25 &&
              state.cardVerificationPercentage! <= 50) {
            dot1Color = Constants.brownColor;
          } else if (state.cardVerificationPercentage! <= 75) {
            dot1Color = Constants.brownColor;
            dot2Color = Constants.brownColor;
          } else if (state.cardVerificationPercentage! > 75) {
            dot1Color = Constants.brownColor;
            dot2Color = Constants.brownColor;
            dot3Color = Constants.brownColor;
          }
        }

        return Visibility(
          visible: state.isCardVerificationSuccess!=true,
          child: Positioned(
              bottom: height * 0.35,
              left: width * 0.21,
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: dot1Color,
                    size: 20,
                  ),
                  const SizedBox(width: 47),
                  Icon(
                    Icons.circle,
                    color: dot2Color,
                    size: 20,
                  ),
                  const SizedBox(width: 47),
                  Icon(
                    Icons.circle,
                    color: dot3Color,
                    size: 20,
                  ),
                ],
              )),
        );
      },
    );
  }
}
