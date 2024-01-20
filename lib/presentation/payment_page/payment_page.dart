// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:checkout_screen_ui/application/payment_page/payment_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:checkout_screen_ui/presentation/payment_page/completed.dart';
import 'package:checkout_screen_ui/presentation/payment_page/fade_in_animation_text.dart';
import 'package:checkout_screen_ui/presentation/widgets/fade_in_animation_dot.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    Key? key,
    this.creditCardIndex,
  }) : super(key: key);

  final int? creditCardIndex;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  double? finalBottomPos;
  double? finalLeftPos;
  double? containerFinalHeight;
  double? containerFinalWidth;

  late double width;
  late double height;
  @override
  void initState() {
    // here we can give card index and the details can be fetched at bloc using the index
    // Since it a ui app, I have didn't fetched those data and called only dummy api
    BlocProvider.of<PaymentPageBloc>(context)
        .add(const PaymentPageEvent.processPayment());
    super.initState();
  }

  setContainerAnimationFinalValues() {
    finalBottomPos = height * -0.05;
    finalLeftPos = width * -0.05;
    containerFinalHeight = height * 1.2;
    containerFinalWidth = width * 1.2;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return BlocConsumer<PaymentPageBloc, PaymentPageState>(
      listener: (context, state) {
        if (state.isPaymentProcessEnded == true) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        int numberOfLoadingDotsVisible = 0;
        if (state.isPageLoaded == true) {
          setContainerAnimationFinalValues();
        }

        if (state.loadingPercentage != null) {
          if (state.loadingPercentage! >= 75) {
            numberOfLoadingDotsVisible = 3;
          } else if (state.loadingPercentage! >= 50) {
            numberOfLoadingDotsVisible = 2;
          } else if (state.loadingPercentage! >= 25) {
            numberOfLoadingDotsVisible = 1;
          }
        }

        return Scaffold(
          body: Stack(
            children: [
              AnimatedPositioned(
                  bottom: finalBottomPos ?? height * 0.025,
                  left: finalLeftPos ?? width * 0.25,
                  duration: const Duration(milliseconds: 500),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: containerFinalHeight ?? height * 0.07,
                    width: containerFinalWidth ?? width * 0.5,
                    decoration: BoxDecoration(
                        color: Constants.brownColor,
                        borderRadius: BorderRadius.circular(10)),
                  )),
              Visibility(
                visible: state.isPaymentCompleted != true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        numberOfLoadingDotsVisible >= 1
                            ? const FadeInDot(width: 12)
                            : const SizedBox(width: 12),
                        const SizedBox(width: 40),
                        numberOfLoadingDotsVisible >= 2
                            ? const FadeInDot(width: 12)
                            : const SizedBox(width: 12),
                        const SizedBox(width: 40),
                        numberOfLoadingDotsVisible >= 3
                            ? const FadeInDot(width: 12)
                            : const SizedBox(width: 12),
                      ],
                    ),
                    const SizedBox(height: 30),
                    state.isProcessing == true
                        ? const SizedBox(
                            height: 30,
                            child: FadeInText(
                              text: 'Processing',
                              fontSize: 20,
                            ),
                          )
                        : const SizedBox(height: 30),
                  ],
                ),
              ),
              Visibility(
                  visible: state.isPaymentCompleted == true,
                  child: const Completed())
            ],
          ),
        );
      },
    );
  }
}
