import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../apps/blocs/story_bloc.dart';
import '../apps/data/models/story.dart';
import '../apps/states/story/story_state.dart';
import '../apps/states/story/story_state_loaded.dart';
import '../widgets/fullscreen_app_loading.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryBloc, StoryState>(
      builder: (
        BuildContext context,
        StoryState state,
      ) {
        if (state is StoryStateLoaded) {
          return storyLayout(context, story: state.story);
        }
        return Scaffold(
          body: FullscreenAppLoading(message: state.message),
        );
      },
    );
  }

  Scaffold storyLayout(BuildContext context, {required Story story}) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Story'),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          storyAuthorAndImageCard(story, context),
          const SizedBox(
            height: 12,
          ),
          storyDescriptionCard(story),
        ],
      ),
    );
  }

  SizedBox storyDescriptionCard(Story story) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        elevation: 1,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Story Description',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(story.description),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox storyAuthorAndImageCard(Story story, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        elevation: 1,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Text(
                    'Story From ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    story.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width / 2,
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
            ),
          ],
        ),
      ),
    );
  }
}
