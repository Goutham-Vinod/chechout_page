// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FadeInText extends StatefulWidget {
  const FadeInText({
    Key? key,
    this.color,
    this.height,
    this.width,
    this.duration,
    this.text,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final Color? color;
  final double? height;
  final double? width;
  final Duration? duration;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  State<FadeInText> createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeInAnimationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    // Create the animation controller
    _fadeInAnimationController = AnimationController(
      duration: widget.duration ?? const Duration(seconds: 1),
      vsync: this,
    );

    // Create a Tween to interpolate values
    _fadeInAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_fadeInAnimationController);

    // Start the animation
    _fadeInAnimationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _fadeInAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeInAnimation,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Text(
          widget.text ?? '',
          style: TextStyle(
            color: widget.color ?? Colors.white,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
        ),
      ),
    );
  }
}
