import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../data/enums/client_error_type.dart';
import '../data/models/story.dart';
import '../data/repositories/story_repository.dart';
import '../events/story/story_event.dart';
import '../events/story/story_event_find.dart';
import '../exceptions/apis/notfound_exception.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/story/story_state.dart';
import '../states/story/story_state_error.dart';
import '../states/story/story_state_init.dart';
import '../states/story/story_state_loaded.dart';
import '../states/story/story_state_not_found.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  late String _token;
  AppLocalizations localization;

  StoryBloc({required String token, required this.localization})
      : super(StoryStateInit()) {
    _token = token;
    on<StoryEventFind>(_findStory);
  }

  _findStory(StoryEventFind event, Emitter<StoryState> emit) async {
    String storyId = event.id;
    emit(StoryStateInit());
    try {
      Story story = await StoryRepository(_token).find(storyId);
      emit(
        StoryStateLoaded(story: story),
      );
    } on NotFoundException catch (_) {
      emit(
        StoryStateNotFound(message: localization.storyNotFound),
      );
    } on UnknownException catch (_) {
      emit(
        StoryStateError(
          errorType: ClientErrorType.unknown,
          message: localization.failedToLoad,
          storyId: storyId,
        ),
      );
    } on SocketException catch (_) {
      emit(
        StoryStateError(
          errorType: ClientErrorType.noInternet,
          message: localization.noInternetFix,
          storyId: storyId,
        ),
      );
    }
  }
}
