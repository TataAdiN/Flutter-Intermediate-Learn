import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_refresh.dart';
import '../apps/states/auth_state.dart';
import '../routes/app_route.dart';
import '../widgets/fullscreen_app_loading.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          String message = '';
          state.whenOrNull(
            init: (){
              context.read<AuthBloc>().add(
                AuthEventRefresh(),
              );
            },
            loading: (){
              message = AppLocalizations.of(context)!.waitAuthentication;
            },
            fail: (String message){
              message = message;
            }
          );
          return FullscreenAppLoading(message: message);
        },
        listener: (BuildContext context, AuthState state) {
          state.whenOrNull(
            loading: (){
              context
                  .read<AuthBloc>()
                  .registerLocalization(AppLocalizations.of(context)!);
            },
            fail: (String message){
              context.pushReplacementNamed(AppRoute.login);
            },
            success: (){
              context.pushReplacementNamed(AppRoute.main);
            }
          );
        },
      ),
    );
  }
}
