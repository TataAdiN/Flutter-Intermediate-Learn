import '../../../utils/paginate.dart';
import '../models/story.dart';

abstract class StoryRepositoryContract {
  Future<List<Story>> paginate(Paginate paginate);
  Future<Story> find(String id);
  Future<bool> create({required String description, required String imagePath});
}
