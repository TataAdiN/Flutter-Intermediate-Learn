import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/enums/client_error_type.dart';
import '../data/models/story.dart';

part 'story_state.freezed.dart';

@freezed
class StoryState with _$StoryState {
  const factory StoryState.init({required String message}) = StoryStateInit;
  const factory StoryState.loaded({required Story story}) = StoryStateLoaded;
  const factory StoryState.error({
    required ClientErrorType errorType,
    required String storyId,
    required String message,
  }) = StoryStateError;
  const factory StoryState.notFound({required String message}) = StoryStateNotFound;
}
