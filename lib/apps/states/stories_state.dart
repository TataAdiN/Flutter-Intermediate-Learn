import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/paginate.dart';
import '../data/enums/client_error_type.dart';
import '../data/models/story.dart';

part 'stories_state.freezed.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState.init() = StoriesStateInit;
  const factory StoriesState.loading() = StoriesStateLoading;
  const factory StoriesState.loaded({required List<Story> stories, required Paginate paginate}) = StoriesStateLoaded;
  const factory StoriesState.error({required ClientErrorType errorType, required String message}) = StoriesStateError;
}
