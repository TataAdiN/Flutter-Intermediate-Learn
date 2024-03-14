import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_refresh.dart';
import '../apps/states/auth/auth_state.dart';
import '../apps/states/auth/auth_state_fail.dart';
import '../apps/states/auth/auth_state_init.dart';
import '../apps/states/auth/auth_state_success.dart';
import '../routes/app_route.dart';
import '../widgets/fullscreen_app_loading.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          String message = state.message;
          if (state is AuthStateInit) {
            context.read<AuthBloc>().add(
                  AuthEventRefresh(),
                );
          }
          return FullscreenAppLoading(message: message);
        },
        listener: (BuildContext context, AuthState state) {
          if (state is AuthStateFail) {
            context.pushReplacementNamed(AppRoute.login);
          } else if (state is AuthStateSuccess) {
            context.pushReplacementNamed(AppRoute.main);
          }
        },
      ),
    );
  }
}
