import 'package:flutter/material.dart';

class ZoomInAnimationText extends StatefulWidget {
  const ZoomInAnimationText({
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
  State<ZoomInAnimationText> createState() => _ZoomInAnimationTextState();
}

class _ZoomInAnimationTextState extends State<ZoomInAnimationText>
    with SingleTickerProviderStateMixin {
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

    _zoomInAnimationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _zoomInAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _zoomInAnimation,
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
