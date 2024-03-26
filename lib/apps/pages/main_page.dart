import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../../views/main_view.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/stories_bloc.dart';
import '../events/stories/stories_event_fetch.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    StoriesBloc bloc = StoriesBloc(
      token: context.read<AuthBloc>().user!.token,
      localization: AppLocalizations.of(context)!,
    );
    bloc.add(
      StoriesEventFetch(),
    );
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: const MainView(),
    );
  }
}
