// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FadeInDot extends StatefulWidget {
  const FadeInDot({
    Key? key,
    this.color,
    this.height,
    this.width,
    this.duration,
  }) : super(key: key);

  final Color? color;
  final double? height;
  final double? width;
  final Duration? duration;

  @override
  State<FadeInDot> createState() => _FadeInDotState();
}

class _FadeInDotState extends State<FadeInDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeInAnimationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
   
    _fadeInAnimationController = AnimationController(
      duration: widget.duration ?? const Duration(milliseconds: 500),
      vsync: this,
    );

    
    _fadeInAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_fadeInAnimationController);

  
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
      child: Container(
        width: widget.width ?? 20,
        height: widget.height ?? 20,
        decoration: BoxDecoration(
            color: widget.color ?? Colors.white, shape: BoxShape.circle),
      ),
    );
  }
}
