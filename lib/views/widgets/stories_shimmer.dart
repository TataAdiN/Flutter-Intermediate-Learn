import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/responsive_screen.dart';

class StoriesShimmer extends StatelessWidget {
  const StoriesShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        storyCardShimmer(context),
        const SizedBox(height: 8),
        storyCardShimmer(context)
      ],
    );
  }

  Card storyCardShimmer(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      elevation: 24,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      child: Shimmer.fromColors(
        baseColor: const Color.fromRGBO(
          237,
          237,
          237,
          1.0,
        ),
        highlightColor: const Color.fromRGBO(
          203,
          203,
          203,
          1.0,
        ),
        enabled: true,
        child: Column(
          children: [storyImage(), storyInfo(context)],
        ),
      ),
    );
  }

  Container storyImage() {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.grey,
        ),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  Padding storyInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ResponsiveSize.fromWidth(
              context,
              percentage: 12,
            ),
            height: 12,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            height: 12,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
