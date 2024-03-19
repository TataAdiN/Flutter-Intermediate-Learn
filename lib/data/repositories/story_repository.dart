import '../../apps/services/remote_api/stories_api.dart';
import '../contracts/story_repository_constract.dart';
import '../models/story.dart';

class StoryRepository implements StoryRepositoryContract {
  late StoriesApi _api;

  StoryRepository(String token) {
    _api = StoriesApi(token: token);
  }

  @override
  Future<List<Story>> all() async {
    return await _api.all();
  }

  @override
  Future<Story> find(String id) async {
    return await _api.find(id: id);
  }

  @override
  Future<bool> create({
    required String description,
    required String imagePath,
  }) async {
    return await _api.create(description: description, imagePath: imagePath);
  }
}
