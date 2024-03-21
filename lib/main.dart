import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/apps/states/auth/auth_state_locale_changed.dart';

import 'apps/blocs/auth_bloc.dart';
import 'apps/states/auth/auth_state.dart';
import 'apps/states/auth/auth_state_success.dart';
import 'l10n/localizations.dart';
import 'routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) {
          return MaterialApp.router(
            title: 'Image Stories',
            locale: context.read<AuthBloc>().locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: ThemeData(
              primaryColor: Colors.blueAccent,
              primarySwatch: Colors.blue,
              colorScheme: ThemeData.light().colorScheme.copyWith(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.black,
                    secondary: Colors.blueAccent,
                  ),
            ),
            routeInformationParser: AppRoute.router.routeInformationParser,
            routerDelegate: AppRoute.router.routerDelegate,
            routeInformationProvider: AppRoute.router.routeInformationProvider,
          );
        },
      ),
    );
  }
}
