import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/main_view.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/stories_bloc.dart';
import '../events/stories/stories_event_fetch.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    StoriesBloc bloc = StoriesBloc();
    bloc.registerToken(context.read<AuthBloc>().user!.token);
    bloc.add(StoriesEventFetch());
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: const MainView(),
    );
  }
}
