import '../../data/enums/client_error_type.dart';
import 'story_state.dart';

class StoryStateError extends StoryState {
  ClientErrorType errorType;
  String storyId;
  StoryStateError({required this.errorType, required this.storyId, required String message}) {
    this.message = message;
  }
}
