import '../../data/enums/client_error_type.dart';
import 'create_story_state.dart';

class CreateStoryStateError extends CreateStoryState {
  ClientErrorType errorType;
  CreateStoryStateError({required this.errorType, required String message}) {
    this.message = message;
  }
}
