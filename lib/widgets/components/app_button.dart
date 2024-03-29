import 'package:flutter/material.dart';

import '../../apps/data/enums/app_button_align.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.onClick,
    required this.label,
    this.color = Colors.blueAccent,
    this.textColor = Colors.white,
    this.width,
    this.height,
    this.icon,
    this.align = AppButtonAlign.left,
    this.outlineColor = Colors.grey,
    this.isOutline = false,
    this.isNoShadow = false,
  }) : super(key: key);

  final VoidCallback onClick;
  final double? width;
  final double? height;
  final IconData? icon;
  final Color color;
  final Color textColor;
  final Color outlineColor;
  final bool isOutline;
  final bool isNoShadow;
  final String label;
  final AppButtonAlign align;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color,
          shadowColor: isNoShadow ? Colors.transparent : null,
          side: isOutline ? BorderSide(width: 2.0, color: outlineColor) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: onClick,
        child: Row(
          mainAxisAlignment: align == AppButtonAlign.center
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            if (icon != null) Icon(icon, color: textColor),
            if (icon != null) const SizedBox(width: 5),
            Text(label),
          ],
        ),
      ),
    );
  }
}
