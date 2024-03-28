import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../../utils/paginate.dart';
import '../data/enums/client_error_type.dart';
import '../data/models/story.dart';
import '../data/repositories/story_repository.dart';
import '../events/stories/stories_event.dart';
import '../events/stories/stories_event_fetch.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/stories/stories_state.dart';
import '../states/stories/stories_state_error.dart';
import '../states/stories/stories_state_init.dart';
import '../states/stories/stories_state_loaded.dart';
import '../states/stories/stories_state_loading.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  late String _token;
  AppLocalizations localization;
  Paginate paginate = Paginate(page: 1, size: 10);
  List<Story> stories = [];

  StoriesBloc({required String token, required this.localization})
      : super(StoriesStateInit()) {
    _token = token;
    on<StoriesEventFetch>(_fetchStories);
  }

  _fetchStories(StoriesEventFetch event, Emitter<StoriesState> emit) async {
    if (event.withReload) {
      emit(StoriesStateLoading());
    }
    try {
      List<Story> newStories = await StoryRepository(_token).paginate(paginate);
      stories.addAll(newStories);
      if (newStories.length < paginate.size) {
        paginate.page = 0;
      } else {
        paginate.page = paginate.page + 1;
      }
      emit(StoriesStateLoaded(stories: stories, paginate: paginate));
    } on UnknownException catch (_) {
      emit(
        StoriesStateError(
          errorType: ClientErrorType.unknown,
          message: localization.failedToLoad,
        ),
      );
    } on SocketException catch (_) {
      emit(
        StoriesStateError(
          errorType: ClientErrorType.noInternet,
          message: localization.noInternetFix,
        ),
      );
    }
  }
}
