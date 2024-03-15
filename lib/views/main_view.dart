import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/blocs/stories_bloc.dart';
import '../apps/states/stories/stories_state.dart';
import '../apps/states/stories/stories_state_loaded.dart';
import '../data/models/story.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Stories'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_photo_alternate_outlined),
            tooltip: "Upload",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            tooltip: "Settings",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.read<AuthBloc>().greeting(context),
                  ),
                  const Text(
                    ', ',
                  ),
                  Text(
                    context.read<AuthBloc>().userAuth?.name ?? '-',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              BlocConsumer<StoriesBloc, StoriesState>(
                builder: (context, state) {
                  List<Story> stories = [];
                  if (state is StoriesStateLoaded) {
                    stories = state.stories;
                  }
                  return storiesWidget(stories);
                },
                listener: (BuildContext context, StoriesState state) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListView storiesWidget(List<Story> stories) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: stories.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 10,
          ),
          child: Container(
            color: Colors.redAccent,
            height: 20,
            child: Text(
              stories[index].name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
