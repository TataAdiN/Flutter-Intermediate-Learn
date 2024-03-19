import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/create_story_view.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/create_story_bloc.dart';

class CreateStoryPage extends StatelessWidget {
  const CreateStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    CreateStoryBloc bloc = CreateStoryBloc();
    bloc.registerToken(
      context.read<AuthBloc>().user!.token,
    );
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: CreateStoryView(),
    );
  }
}
