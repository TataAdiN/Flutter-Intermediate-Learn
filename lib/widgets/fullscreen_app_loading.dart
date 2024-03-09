import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FullscreenAppLoading extends StatelessWidget {
  const FullscreenAppLoading({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('assets/icon.png'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LottieBuilder.asset(
                  'assets/loading.json',
                  width: 72,
                  height: 72,
                  frameRate: FrameRate.max,
                  animate: true,
                ),
                Text(message),
              ],
            )
          ],
        ),
      ),
    );
  }
}
