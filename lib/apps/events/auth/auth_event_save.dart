import '../../../data/models/user_auth.dart';
import 'auth_event.dart';

class AuthEventSave extends AuthEvent {
  UserAuth userAuth;
  AuthEventSave({required this.userAuth});
}
