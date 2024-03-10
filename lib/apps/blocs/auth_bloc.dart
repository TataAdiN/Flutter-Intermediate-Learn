import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/apps/events/auth/auth_event_save.dart';
import 'package:flutter_intermediate_learn/data/models/user_auth.dart';

import '../events/auth/auth_event.dart';
import '../events/auth/auth_event_refresh.dart';
import '../states/auth/auth_state.dart';
import '../states/auth/auth_state_fail.dart';
import '../states/auth/auth_state_init.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool isLogged = false;
  UserAuth? userAuth;

  AuthBloc() : super(AuthStateInit()) {
    on<AuthEventRefresh>(_refresh);
    on<AuthEventSave>(_save);
  }

  get isAuth => isLogged;
  get authenticateUser => userAuth;

  _refresh(AuthEventRefresh event, Emitter<AuthState> emit) async {
    await Future.delayed(const Duration(seconds: 3), () {});
    emit(AuthStateFail());
    UserAuth userAuth = UserAuth(userId: 'userId', name: 'name', email: 'email', password: 'password', token: 'token');
    this.userAuth = userAuth;
    add(AuthEventSave(userAuth: userAuth));
  }

  _save(AuthEventSave event, Emitter<AuthState> emit) async {
    print('called');
  }
}
