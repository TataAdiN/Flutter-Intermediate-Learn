import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utils/paginate.dart';
import '../../services/remote_api/stories_api.dart';
import '../contracts/story_repository_constract.dart';
import '../models/story.dart';

class StoryRepository implements StoryRepositoryContract {
  late StoriesApi _api;

  StoryRepository(String token) {
    _api = StoriesApi(token: token);
  }

  @override
  Future<List<Story>> paginate(Paginate paginate) async {
    return await _api.all(paginate: paginate);
  }

  @override
  Future<Story> find(String id) async {
    return await _api.find(id: id);
  }

  @override
  Future<bool> create({
    required String description,
    required String imagePath,
    required LatLng latLng,
  }) async {
    return await _api.create(
      description: description,
      imagePath: imagePath,
      latLng: latLng,
    );
  }
}
