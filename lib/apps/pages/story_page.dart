import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/story_view.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/story_bloc.dart';
import '../events/story/story_event_find.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key, required this.storyId});
  final String storyId;

  @override
  Widget build(BuildContext context) {
    StoryBloc bloc = StoryBloc();
    bloc.registerToken(
      context.read<AuthBloc>().user!.token,
    );
    bloc.add(
      StoryEventFind(id: storyId),
    );
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: const StoryView(),
    );
  }
}
