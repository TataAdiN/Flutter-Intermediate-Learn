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
      elevation: 1,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
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
