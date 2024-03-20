import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'apps/blocs/auth_bloc.dart';
import 'apps/states/auth/auth_state.dart';
import 'l10n/localizations.dart';
import 'routes/app_route.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
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
            title: 'Flutter Demo',
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
