import '../models/story.dart';

abstract class StoryRepositoryContract {
  Future<List<Story>>all();
}