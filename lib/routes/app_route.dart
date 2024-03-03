import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../apps/pages/auth_page.dart';
import '../apps/pages/login_page.dart';

class AppRoute {
  static String login = 'login_state.dart';

  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const AuthPage();
        },
      ),
      GoRoute(
        path: '/login',
        name: login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      )
    ],
  );

  static GoRouter get router => _router;
}