import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';

import '../../views/login_view.dart';
import '../blocs/login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (BuildContext context) => LoginBloc(localization: localizations),
      child: LoginView(),
    );
  }
}
