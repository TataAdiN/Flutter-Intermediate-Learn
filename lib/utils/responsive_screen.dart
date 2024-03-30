import 'package:flutter/material.dart';

class ResponsiveSize {
  static double fromWidth(
    BuildContext context, {
    required int percentage,
  }) => _adjust(context, percentage, 1);

  static double fromHeight(
    BuildContext context, {
    required int percentage,
  }) => _adjust(context, percentage, 0);

  static double _adjust(BuildContext context, int percentage, int mode) {
    double size = 0;
    if (mode == 1) {
      size = MediaQuery.of(context).size.width;
    } else {
      size = MediaQuery.of(context).size.height;
    }
    return size * (percentage / 100);
  }
}
