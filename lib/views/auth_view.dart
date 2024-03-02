import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/apps/states/auth/auth_state_fail.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_refresh.dart';
import '../apps/states/auth/auth_state.dart';
import '../apps/states/auth/auth_state_init.dart';
import '../routes/app_route.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          String message = state.message;
          if (state is AuthStateInit) {
            context.read<AuthBloc>().add(AuthEventRefresh());
          }
          return _splashLoading(message);
        },
        listener: (BuildContext context, AuthState state) {
          if (state is AuthStateFail) {
            context.pushReplacementNamed(AppRoute.login);
          }
        },
      ),
    );
  }

  Widget _splashLoading(String message) => Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/icon.png'),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LottieBuilder.asset(
                    'assets/loading.json',
                    width: 72,
                    height: 72,
                    frameRate: FrameRate.max,
                    animate: true,
                  ),
                  Text(message),
                ],
              )
            ],
          ),
        ),
      );
}
