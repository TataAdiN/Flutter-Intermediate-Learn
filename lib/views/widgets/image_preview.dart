import 'package:flutter/material.dart';

import '../../utils/responsive_screen.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({
    super.key,
    required this.imagePreview,
  });

  final ImageProvider<Object> imagePreview;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: ResponsiveSize.fromWith(
          context,
          percentage: 50,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.grey,
          ),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imagePreview,
          ),
        ),
      ),
    );
  }
}