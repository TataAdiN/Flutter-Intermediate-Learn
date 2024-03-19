import '../../data/enums/client_error_type.dart';
import 'login_state.dart';

class LoginStateError extends LoginState {
  ClientErrorType errorType;
  LoginStateError({required this.errorType, required String message}) {
    this.message = message;
  }
}
