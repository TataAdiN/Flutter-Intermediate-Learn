import '../../../data/enums/client_error_type.dart';
import 'register_state.dart';

class RegisterStateError extends RegisterState {
  ClientErrorType errorType;
  RegisterStateError({required this.errorType, required String message}) {
    this.message = message;
  }
}
