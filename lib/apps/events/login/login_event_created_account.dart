import 'login_event.dart';

class LoginEventCreatedAccount implements LoginEvent {
  final Map<String, dynamic> result;
  LoginEventCreatedAccount({required this.result});
}
