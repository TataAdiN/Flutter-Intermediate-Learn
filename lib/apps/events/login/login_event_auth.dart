import 'login_event.dart';

class LoginEventAuth implements LoginEvent {
  final String email, password;
  LoginEventAuth({required this.email, required this.password});
}
