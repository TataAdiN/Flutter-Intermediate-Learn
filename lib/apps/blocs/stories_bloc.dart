import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/story.dart';
import '../data/repositories/story_repository.dart';
import '../events/stories/stories_event.dart';
import '../events/stories/stories_event_fetch.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/stories/stories_state.dart';
import '../states/stories/stories_state_init.dart';
import '../states/stories/stories_state_loaded.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  late String token;

  void registerToken(String token) {
    this.token = token;
  }

  StoriesBloc() : super(StoriesStateInit()) {
    on<StoriesEventFetch>(_fetchStories);
  }

  _fetchStories(StoriesEventFetch event, Emitter<StoriesState> emit) async {
    try {
      List<Story> stories = await StoryRepository(token).all();
      emit(StoriesStateLoaded(stories: stories));
    } on UnknownException catch (_) {
      print('fail to load');
    }
  }
}
