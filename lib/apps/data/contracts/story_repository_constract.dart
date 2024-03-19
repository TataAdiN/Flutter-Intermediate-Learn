import '../models/story.dart';

abstract class StoryRepositoryContract {
  Future<List<Story>> all();
  Future<Story> find(String id);
  Future<bool> create({required String description, required String imagePath});
}
