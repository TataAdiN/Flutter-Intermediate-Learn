import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/file_size.dart';
import '../events/create_story/create_story_event.dart';
import '../events/create_story/create_story_event_pick_image.dart';
import '../states/create_story/create_story_state.dart';
import '../states/create_story/create_story_state_init.dart';
import '../states/create_story/create_story_state_picked_image.dart';

class CreateStoryBloc extends Bloc<CreateStoryEvent, CreateStoryState> {
  CreateStoryBloc() : super(CreateStoryStateInit()) {
    on<CreateStoryEventPickImage>(_pickImage);
  }

  _pickImage(
      CreateStoryEventPickImage event, Emitter<CreateStoryState> emit) async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedFile = await imagePicker.pickImage(source: event.source);
    if (pickedFile != null) {
      String path = pickedFile.path.toString();
      File? croppedImage = await _requestCropImage(path);
      if (croppedImage != null) {
        emit(
          CreateStoryStatePickedImage(
            pickedImage: croppedImage,
          ),
        );
      }
    }
  }

  Future<File?> _requestCropImage(String path) async {
    File? croppedImage = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatioPresets: [
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio5x3,
        CropAspectRatioPreset.ratio5x4,
        CropAspectRatioPreset.ratio7x5,
        CropAspectRatioPreset.ratio16x9,
      ],
      compressQuality: 80,
      androidUiSettings: const AndroidUiSettings(
        initAspectRatio: CropAspectRatioPreset.ratio4x3,
        lockAspectRatio: true,
      ),
      iosUiSettings: const IOSUiSettings(aspectRatioLockEnabled: true),
    );
    return croppedImage;
  }
}