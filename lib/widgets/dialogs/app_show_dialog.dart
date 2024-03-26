import 'package:flutter/material.dart';

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
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(animation),
        child: dialog,
      );
    },
  );
}
