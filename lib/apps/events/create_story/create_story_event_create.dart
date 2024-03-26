import 'create_story_event.dart';

class CreateStoryEventAction implements CreateStoryEvent {
  String description;
  CreateStoryEventAction({required this.description});
}
