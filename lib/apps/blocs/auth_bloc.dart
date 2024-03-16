import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/user_auth.dart';
import '../../data/repositories/local_user_repository.dart';
import '../events/auth/auth_event.dart';
import '../events/auth/auth_event_logout.dart';
import '../events/auth/auth_event_refresh.dart';
import '../exceptions/local_storage/local_storage_empty_exception.dart';
import '../states/auth/auth_state.dart';
import '../states/auth/auth_state_fail.dart';
import '../states/auth/auth_state_init.dart';
import '../states/auth/auth_state_loggedout.dart';
import '../states/auth/auth_state_success.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool _isLogged = false;
  UserAuth? _userAuth;

  AuthBloc() : super(AuthStateInit()) {
    on<AuthEventRefresh>(_refresh);
    on<AuthEventLogout>(_logout);
  }

  get isAuth => _isLogged;
  get user => _userAuth;

  _refresh(AuthEventRefresh event, Emitter<AuthState> emit) async {
    try {
      //to show animation authentication loading animation
      await Future.delayed(
        const Duration(seconds: 1),
      );
      _userAuth = await LocalUserRepository().read();
      _isLogged = true;
      emit(
        AuthStateSuccess(),
      );
    } on LocalStorageEmptyException catch (_) {
      emit(
        AuthStateFail(),
      );
    }
  }

  _logout(AuthEventLogout event, Emitter<AuthState> emit) async {
    bool result = await LocalUserRepository().remove();
    if (result) {
      _isLogged = false;
      emit(
        AuthStateLoggedout(),
      );
    } else {
      emit(
        AuthStateFail(),
      );
    }
  }

  update() async {
    _userAuth = await LocalUserRepository().read();
    _isLogged = true;
  }

  String greeting(BuildContext context) {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }
}
