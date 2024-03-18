import 'package:image_picker/image_picker.dart';

import 'create_story_event.dart';

class CreateStoryEventPickImage implements CreateStoryEvent {
  final ImageSource source;
  CreateStoryEventPickImage({required this.source});
}
