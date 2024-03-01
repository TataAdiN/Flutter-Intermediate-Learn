import 'package:flutter/material.dart';
import 'package:flutter_intermediate_learn/apps/pages/auth_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const AuthPage();
        },
      )
    ],
  );

  static GoRouter get router => _router;
}
