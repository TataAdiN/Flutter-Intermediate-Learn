import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../../views/register_view.dart';
import '../blocs/register_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (BuildContext context) => RegisterBloc(localization: localizations),
      child: RegisterView(),
    );
  }
}
