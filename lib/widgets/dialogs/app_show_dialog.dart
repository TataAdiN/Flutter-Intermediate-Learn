import 'package:flutter/material.dart';
import 'package:flutter_intermediate_learn/widgets/bounce_animation.dart';

Future<void> showAppDialog(
  BuildContext context, {
  required Widget dialog,
}) {
  return showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: '',
    context: context,
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return Container();
    },
    transitionDuration: const Duration(milliseconds: 400),
    transitionBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget widget,
    ) {
      return BounceAnimation(animateWidget: dialog);
    },
  );
}
