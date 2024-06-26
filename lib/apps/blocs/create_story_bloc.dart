import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../l10n/localizations.dart';
import '../../utils/file_size.dart';
import '../data/enums/client_error_type.dart';
import '../data/repositories/story_repository.dart';
import '../events/create_story/create_story_event.dart';
import '../events/create_story/create_story_event_create.dart';
import '../events/create_story/create_story_event_pick_image.dart';
import '../states/create_story_state.dart';

class CreateStoryBloc extends Bloc<CreateStoryEvent, CreateStoryState> {
  late String _token;
  AppLocalizations localization;

  File? croppedImage;
  CreateStoryBloc({
    required String token,
    required this.localization,
  }) : super(const CreateStoryStateInit()) {
    _token = token;
    on<CreateStoryEventPickImage>(_pickImage);
    on<CreateStoryEventAction>(_postStory);
  }

  _postStory(
    CreateStoryEventAction event,
    Emitter<CreateStoryState> emit,
  ) async {
    if (croppedImage == null) {
      emit(
        CreateStoryState.error(
          errorType: ClientErrorType.badRequest,
          message: localization.failNoImage,
        ),
      );
    } else {
      emit(CreateStoryStateLoading(message: localization.wait));
      if (FileSize.of(croppedImage!) > 1.0) {
        await Future.delayed(
          const Duration(seconds: 1),
        );
        emit(
          CreateStoryStateError(
            errorType: ClientErrorType.fileToLarge,
            message: localization.failImageTooLarge,
          ),
        );
      } else {
        try {
          LatLng latLng = _parseLatLng(event.latlng);
          bool created = await StoryRepository(_token).create(
            description: event.description,
            imagePath: croppedImage!.path,
            latLng: latLng,
          );
          if (created) {
            emit(const CreateStoryStateCreated());
          } else {
            emit(
              CreateStoryStateError(
                errorType: ClientErrorType.unknown,
                message: localization.failCreateStory,
              ),
            );
          }
        } on SocketException catch (_) {
          emit(
            CreateStoryStateError(
              errorType: ClientErrorType.noInternet,
              message: localization.noInternetFix,
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
    CroppedFile? croppedImage = await ImageCropper().cropImage(
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
      uiSettings: [
        AndroidUiSettings(
          initAspectRatio: CropAspectRatioPreset.ratio4x3,
          lockAspectRatio: true,
          toolbarTitle: localization.editImage,
        ),
        IOSUiSettings(
          aspectRatioLockEnabled: true,
          title: localization.editImage,
        ),
      ],
    );
    File? file;
    if (croppedImage != null) {
      file = File(croppedImage.path);
    }
    return file;
  }

  LatLng _parseLatLng(String coordinate) {
    List<String> coordinates = coordinate.split(",");
    LatLng latLng = LatLng(
      double.parse(coordinates[0]),
      double.parse(coordinates[1]),
    );
    return latLng;
  }
}
