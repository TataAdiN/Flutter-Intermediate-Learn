import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../apps/pages/auth_page.dart';
import '../apps/pages/login_page.dart';
import '../apps/pages/main_page.dart';
import '../apps/pages/register_page.dart';

class AppRoute {
  static String login = 'login';
  static String register = 'register';
  static String main = 'main';

  static final GoRouter _router = GoRouter(
    initialLocation: '/auth',
    routes: <RouteBase>[
      GoRoute(
        path: '/auth',
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
      ),
      GoRoute(
        path: '/register',
        name: register,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterPage();
        },
      ),
      GoRoute(
        path: '/',
        name: main,
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
      )
    ],
  );

  static GoRouter get router => _router;
}
