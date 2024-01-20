
import 'package:checkout_screen_ui/application/check_out_page/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationSuccess extends StatefulWidget {
  const VerificationSuccess({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<VerificationSuccess> createState() => _VerificationSuccessState();
}

class _VerificationSuccessState extends State<VerificationSuccess>
    with SingleTickerProviderStateMixin {
//  double leftPos = width * 0.4;
  late AnimationController _zoomInAnimationController;
  late Animation<double> _zoomInAnimation;

  @override
  void initState() {
    _zoomInAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _zoomInAnimation = Tween<double>(begin: 0, end: 1.0).animate(
        CurvedAnimation(
            parent: _zoomInAnimationController, curve: Curves.easeInOut));

    super.initState();
  }

  @override
  void dispose() {
    _zoomInAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double leftPos = widget.width * 0.3;
    double topPos = widget.height * 0.25;
    double containerWidth = widget.width * 0.25;
    double containerHeight = widget.height * 0.25;

    return BlocListener<CheckOutPageBloc, CheckOutPageState>(
      listener: (context, state) {
        if (state.isCardVerificationSuccess == true) {
          _zoomInAnimationController.forward();
        }
      },
      child: Positioned(
          left: leftPos,
          top: topPos,
          child: ScaleTransition(
            scale: _zoomInAnimation,
            child: Container(
              width: containerWidth,
              height: containerHeight,
              decoration: const BoxDecoration(
                color: Constants.brownColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.done,
                size: widget.height * 0.2,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
