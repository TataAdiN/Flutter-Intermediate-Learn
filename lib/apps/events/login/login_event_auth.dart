import '../../blocs/auth_bloc.dart';
import 'login_event.dart';

class LoginEventAuth implements LoginEvent {
  final String email, password;
  final AuthBloc authBloc;
  LoginEventAuth({required this.email, required this.password, required this.authBloc});
}
