import 'auth_event.dart';

class AuthEventChangeLocale extends AuthEvent {
  String locale;
  AuthEventChangeLocale({required this.locale});
}
