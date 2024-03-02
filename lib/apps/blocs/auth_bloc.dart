import 'package:flutter_bloc/flutter_bloc.dart';

import '../events/auth/auth_event.dart';
import '../events/auth/auth_event_refresh.dart';
import '../states/auth/auth_state.dart';
import '../states/auth/auth_state_fail.dart';
import '../states/auth/auth_state_init.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateInit()) {
    on<AuthEventRefresh>(_refresh);
  }

  _refresh(AuthEventRefresh event, Emitter<AuthState> emit) async {
    await Future.delayed(const Duration(seconds: 3), () {});
    emit(AuthStateFail());
  }
}
