import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../../views/pick_location_view.dart';
import '../blocs/pick_location_bloc.dart';

class PickLocationPage extends StatelessWidget {
  const PickLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (BuildContext context) => PickLocationBloc(localization: localizations),
      child: const PickLocationView(),
    );
  }
}
