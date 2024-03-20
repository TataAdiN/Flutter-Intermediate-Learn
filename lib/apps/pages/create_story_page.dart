import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';

import '../../views/create_story_view.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/create_story_bloc.dart';

class CreateStoryPage extends StatelessWidget {
  const CreateStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    String token = context.read<AuthBloc>().user!.token;
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (BuildContext context) => CreateStoryBloc(
        token: token,
        localization: localizations,
      ),
      child: CreateStoryView(),
    );
  }
}
