import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/file_size.dart';
import '../data/enums/client_error_type.dart';
import '../data/repositories/story_repository.dart';
import '../events/create_story/create_story_event.dart';
import '../events/create_story/create_story_event_create.dart';
import '../events/create_story/create_story_event_pick_image.dart';
import '../states/create_story/create_story_state.dart';
import '../states/create_story/create_story_state_created.dart';
import '../states/create_story/create_story_state_error.dart';
import '../states/create_story/create_story_state_init.dart';
import '../states/create_story/create_story_state_loading.dart';
import '../states/create_story/create_story_state_picked_image.dart';

class CreateStoryBloc extends Bloc<CreateStoryEvent, CreateStoryState> {
  late String token;

  void registerToken(String token) {
    this.token = token;
  }

  File? croppedImage;
  CreateStoryBloc() : super(CreateStoryStateInit()) {
    on<CreateStoryEventPickImage>(_pickImage);
    on<CreateStoryEventAction>(_postStory);
  }

  _postStory(
    CreateStoryEventAction event,
    Emitter<CreateStoryState> emit,
  ) async {
    if (croppedImage == null) {
      emit(
        CreateStoryStateError(
          errorType: ClientErrorType.badRequest,
          message: 'Foto tidak tersedia, mohon tambahkan foto dulu',
        ),
      );
    } else {
      emit(CreateStoryStateLoading());
      await Future.delayed(const Duration(seconds: 1));
      if (FileSize.of(croppedImage!) > 1.0) {
        emit(
          CreateStoryStateError(
            errorType: ClientErrorType.fileToLarge,
            message: 'Foto terlalu besar',
          ),
        );
      } else {
        try {
          bool created = await StoryRepository(token).create(
            description: event.description,
            imagePath: croppedImage!.path,
          );
          if (created) {
            emit(CreateStoryStateCreated());
          } else {
            emit(
              CreateStoryStateError(
                errorType: ClientErrorType.unknown,
                message: 'Fail to create story',
              ),
            );
          }
        } on SocketException catch (_) {
          emit(
            CreateStoryStateError(
              errorType: ClientErrorType.noInternet,
              message: 'Please fix your connection and try again',
            ),
          );
        }
      }
    }
  }

  _pickImage(
    CreateStoryEventPickImage event,
    Emitter<CreateStoryState> emit,
  ) async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedFile = await imagePicker.pickImage(source: event.source);
    if (pickedFile != null) {
      String path = pickedFile.path.toString();
      croppedImage = await _requestCropImage(path);
      if (croppedImage != null) {
        emit(
          CreateStoryStatePickedImage(
            pickedImage: croppedImage!,
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
