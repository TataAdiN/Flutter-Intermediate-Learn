import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'loader_animation.dart';

class CustomPainterAnimationScreen extends StatefulWidget {
  const CustomPainterAnimationScreen({super.key});

  @override
  State<CustomPainterAnimationScreen> createState() =>
      _CustomPainterAnimationScreenState();
}

class _CustomPainterAnimationScreenState
    extends State<CustomPainterAnimationScreen> with TickerProviderStateMixin {
  late AnimationController loaderController;
  late Animation<double> loaderAnimation;

  @override
  void initState() {
    loaderController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    loaderAnimation = Tween(begin: 1.0, end: 2.4).animate(
      CurvedAnimation(
        parent: loaderController,
        curve: Curves.easeInOut,
      ),
    );
    loaderController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    loaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: loaderAnimation,
          builder: (context, child) {
            return Transform.rotate(
              angle: loaderController.status == AnimationStatus.forward
                  ? (math.pi * 2) * loaderController.value
                  : -(math.pi * 2) * loaderController.value,
              child: CustomPaint(
                foregroundPainter: LoaderAnimation(
                  radiusRatio: loaderAnimation.value,
                ),
                size: const Size(300, 300),
              ),
            );
          },
        ),
      ),
    );
  }
}
