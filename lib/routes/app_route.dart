import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/pages/auth_page.dart';
import '../apps/pages/create_story_page.dart';
import '../apps/pages/login_page.dart';
import '../apps/pages/main_page.dart';
import '../apps/pages/pick_location_page.dart';
import '../apps/pages/register_page.dart';
import '../apps/pages/settings_page.dart';
import '../apps/pages/story_page.dart';

class AppRoute {
  static String login = 'login';
  static String register = 'register';
  static String main = 'main';
  static String story = 'story';
  static String createStory = 'create_story';
  static String settings = 'settings';
  static String pickLocation = 'pick_location';

  static final GoRouter _router = GoRouter(
    initialLocation: '/auth',
    routes: <RouteBase>[
      GoRoute(
        path: '/auth',
        name: 'auth',
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
        redirect: (BuildContext context, GoRouterState state) {
          bool isLogin = context.read<AuthBloc>().isAuth;
          if (isLogin) {
            return state.uri.path;
          }
          if (state.name == register) {
            return '/register';
          }
          if (state.name == 'auth') {
            return '/auth';
          }
          return '/login';
        },
        path: '/',
        name: main,
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'story',
            name: 'root_story',
            builder: (BuildContext context, GoRouterState state) {
              return notFoundPage();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'create',
                name: createStory,
                builder: (BuildContext context, GoRouterState state) {
                  return const CreateStoryPage();
                },
              ),
              GoRoute(
                path: ':id',
                name: story,
                builder: (BuildContext context, GoRouterState state) {
                  return StoryPage(storyId: state.pathParameters['id']!);
                },
              ),
            ],
          ),
          GoRoute(
            path: 'pick_location',
            name: pickLocation,
            builder: (BuildContext context, GoRouterState state) {
              return const PickLocationPage();
            },
          ),
          GoRoute(
            path: 'settings',
            name: settings,
            builder: (BuildContext context, GoRouterState state) {
              return const SettingsPage();
            },
          ),
        ],
      ),
    ],
  );

  static Scaffold notFoundPage() {
    return const Scaffold(
      body: Center(
        child: Text('404 - Page not found'),
      ),
    );
  }

  static GoRouter get router => _router;
}
