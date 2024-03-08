import 'package:flutter_bloc/flutter_bloc.dart';

import '../events/login/login_event.dart';
import '../events/login/login_event_auth.dart';
import '../states/login/login_state.dart';
import '../states/login/login_state_init.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginStateInit()) {
    on<LoginEventAuth>(_auth);
  }

  _auth(LoginEventAuth event, Emitter<LoginState> emit) async {
    print(event.email);
    print(event.password);
  }
}