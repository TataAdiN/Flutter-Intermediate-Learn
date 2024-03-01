import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_refresh.dart';
import '../apps/states/auth/auth_state.dart';
import '../apps/states/auth/auth_state_init.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          String message = state.message;
          if (state is AuthStateInit) {
            context.read<AuthBloc>().add(AuthEventRefresh());
          }
          return Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(message),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
