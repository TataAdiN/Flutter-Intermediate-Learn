import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/url_strategy.dart';
import 'data/repositories/auth_repository.dart';
import 'providers/auth_provider.dart';
import 'routes/app_route_information_parser.dart';
import 'routes/app_router_delegate.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppRouterDelegate _appRouterDelegate;
  late AuthProvider _authProvider;
  late AppRouteInformationParser _appRouteInformationParser;

  @override
  void initState() {
    super.initState();
    AuthRepository authRepository = AuthRepository();
    _authProvider = AuthProvider(authRepository);
    _appRouterDelegate = AppRouterDelegate(authRepository);
    _appRouteInformationParser = AppRouteInformationParser();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _authProvider,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MaterialApp.router(
          routerDelegate: _appRouterDelegate,
          routeInformationParser: _appRouteInformationParser,
          backButtonDispatcher: RootBackButtonDispatcher(),
        ),
      ),
    );
  }
}
