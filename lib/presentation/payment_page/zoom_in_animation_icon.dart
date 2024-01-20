import 'package:flutter/material.dart';

class ZoomInIcon extends StatefulWidget {
  const ZoomInIcon({
    Key? key,
  }) : super(key: key);

  @override
  State<ZoomInIcon> createState() => _ZoomInIconState();
}

class _ZoomInIconState extends State<ZoomInIcon>
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
      child: const Icon(
        Icons.check_circle_rounded,
        color: Colors.white,
        size: 50,
      ),
    );
  }
}
