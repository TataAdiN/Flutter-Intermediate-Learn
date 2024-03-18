import 'dart:io';

import 'create_story_state.dart';

class CreateStoryStatePickedImage extends CreateStoryState {
  File pickedImage;
  CreateStoryStatePickedImage({required this.pickedImage});
}
