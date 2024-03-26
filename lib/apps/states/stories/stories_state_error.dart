import '../../data/enums/client_error_type.dart';
import 'stories_state.dart';

class StoriesStateError extends StoriesState {
  ClientErrorType errorType;
  StoriesStateError({required this.errorType, required String message}) {
    this.message = message;
  }
}
