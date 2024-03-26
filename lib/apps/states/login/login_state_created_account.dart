import 'login_state.dart';

class LoginStateCreatedAccount extends LoginState {
  String email;
  LoginStateCreatedAccount({required String message, required this.email}) {
    this.message = message;
  }
}
