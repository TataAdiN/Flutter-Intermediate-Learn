import 'package:flutter_intermediate_learn/apps/services/remote_api/stories_api.dart';
import 'package:flutter_intermediate_learn/data/models/story.dart';

import '../contracts/story_repository_constract.dart';

class StoryRepository implements StoryRepositoryContract {
  late StoriesApi _api;

  StoryRepository(String token) {
    _api = StoriesApi(token: token);
  }

  @override
  Future<List<Story>> all() async {
    return await _api.all();
  }
}
