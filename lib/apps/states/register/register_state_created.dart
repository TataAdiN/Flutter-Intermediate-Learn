import 'register_state.dart';

class RegisterStateCreated extends RegisterState {
  String email;
  RegisterStateCreated({required String message, required this.email}) {
    this.message = message;
  }
}
