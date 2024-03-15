import '../../../data/models/story.dart';
import 'stories_state.dart';

class StoriesStateLoaded extends StoriesState {
  List<Story> stories;
  StoriesStateLoaded({required this.stories});
}
