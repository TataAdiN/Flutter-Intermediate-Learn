import 'auth_state.dart';

class AuthStateFail extends AuthState {
  AuthStateFail() {
    message = 'Fail to login from local history';
  }
}
