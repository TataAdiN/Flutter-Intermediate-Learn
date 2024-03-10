import 'package:flutter/material.dart';

class ExpandedAppBar extends StatelessWidget {
  const ExpandedAppBar({
    Key? key,
    required this.title,
    this.color = Colors.white,
  }) : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      floating: false,
      expandedHeight: 160.0,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: color,
      surfaceTintColor: color,
    );
  }
}
