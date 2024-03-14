import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/user_auth.dart';
import '../../data/repositories/local_user_repository.dart';
import '../events/auth/auth_event.dart';
import '../events/auth/auth_event_refresh.dart';
import '../events/auth/auth_event_save.dart';
import '../exceptions/local_storage/local_storage_empty_exception.dart';
import '../states/auth/auth_state.dart';
import '../states/auth/auth_state_fail.dart';
import '../states/auth/auth_state_init.dart';
import '../states/auth/auth_state_success.dart';

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
    try {
      userAuth = await LocalUserRepository().read();
      emit(
        AuthStateSuccess(),
      );
    } on LocalStorageEmptyException catch (_) {
      emit(
        AuthStateFail(),
      );
    }
  }

  _save(AuthEventSave event, Emitter<AuthState> emit) async {
    print('called');
  }
}
