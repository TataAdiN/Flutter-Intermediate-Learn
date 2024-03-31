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
import '../states/stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  late String _token;
  AppLocalizations localization;
  Paginate paginate = Paginate(page: 1, size: 10);
  List<Story> stories = [];

  StoriesBloc({required String token, required this.localization})
      : super(const StoriesStateInit()) {
    _token = token;
    on<StoriesEventFetch>(_fetchStories);
  }

  _fetchStories(StoriesEventFetch event, Emitter<StoriesState> emit) async {
    //rebuild list to force shown start from index 0
    //reset pagination page from 1 and stories length to 0
    if (event.withReload) {
      emit(const StoriesStateLoading());
      paginate.page = 1;
      stories = [];
    }
    //stop when reach end of page
    if (paginate.page == 0) {
      return;
    }
    try {
      List<Story> newStories = await StoryRepository(_token).paginate(paginate);
      stories.addAll(newStories);
      if (paginate.reachEndPage(newStories.length)) {
        paginate.page = 0;
      } else {
        paginate.page = paginate.page + 1;
      }
      emit(StoriesState.loaded(stories: List.from(stories), paginate: paginate));
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
