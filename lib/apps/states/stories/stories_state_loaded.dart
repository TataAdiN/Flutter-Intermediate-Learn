import '../../../utils/paginate.dart';
import '../../data/models/story.dart';
import 'stories_state.dart';

class StoriesStateLoaded extends StoriesState {
  List<Story> stories;
  Paginate paginate;
  StoriesStateLoaded({required this.stories, required this.paginate});
}
