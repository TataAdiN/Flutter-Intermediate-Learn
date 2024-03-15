import 'package:flutter/material.dart';

import '../../views/story_view.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return const StoryView();
  }
}
