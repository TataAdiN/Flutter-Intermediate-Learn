import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/story.dart';
import '../../data/repositories/story_repository.dart';
import '../events/story/story_event.dart';
import '../events/story/story_event_find.dart';
import '../exceptions/apis/notfound_exception.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/story/story_state.dart';
import '../states/story/story_state_init.dart';
import '../states/story/story_state_loaded.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  late String token;

  void registerToken(String token) {
    this.token = token;
  }

  StoryBloc() : super(StoryStateInit()) {
    on<StoryEventFind>(_findStory);
  }

  _findStory(StoryEventFind event, Emitter<StoryState> emit) async {
    try {
      String storyId = event.id;
      //String storyId = 'event.id';
      Story story = await StoryRepository(token).find(storyId);
      emit(StoryStateLoaded(story: story));
    } on NotFoundException catch (_) {
      print('not found');
    } on UnknownException catch (_) {
      print('fail to load');
    }
  }
}