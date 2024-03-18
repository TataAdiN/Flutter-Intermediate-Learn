import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/create_story_view.dart';
import '../blocs/create_story_bloc.dart';

class CreateStoryPage extends StatelessWidget {
  const CreateStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CreateStoryBloc(),
      child: CreateStoryView(),
    );
  }
}
