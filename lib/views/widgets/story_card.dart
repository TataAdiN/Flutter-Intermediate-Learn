import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../apps/data/models/story.dart';
import '../../routes/app_route.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
    required this.story,
  });

  final Story story;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        AppRoute.story,
        pathParameters: {'id': story.id},
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        elevation: 24,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            storyImage(),
            storyInfo(),
          ],
        ),
      ),
    );
  }

  Padding storyInfo() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            story.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            story.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: true,
          ),
        ],
      ),
    );
  }

  Container storyImage() {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            story.photoUrl,
          ),
        ),
      ),
    );
  }
}
