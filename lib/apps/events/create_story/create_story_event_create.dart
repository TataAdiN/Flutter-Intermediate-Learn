import 'create_story_event.dart';

class CreateStoryEventAction implements CreateStoryEvent {
  String description;
  String latlng;
  CreateStoryEventAction({required this.description, required this.latlng});
}
