import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/enums/client_error_type.dart';

part 'create_story_state.freezed.dart';

@Freezed(equal: false)
class CreateStoryState with _$CreateStoryState {
  const factory CreateStoryState.init() = CreateStoryStateInit;
  const factory CreateStoryState.loading({
    required String message,
  }) = CreateStoryStateLoading;
  const factory CreateStoryState.pickedImage({
    required File pickedImage,
  }) = CreateStoryStatePickedImage;
  const factory CreateStoryState.created() = CreateStoryStateCreated;
  const factory CreateStoryState.error({
    required ClientErrorType errorType,
    required String message,
  }) = CreateStoryStateError;
}
