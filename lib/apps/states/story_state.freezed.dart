// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) init,
    required TResult Function(Story story) loaded,
    required TResult Function(
            ClientErrorType errorType, String storyId, String message)
        error,
    required TResult Function(String message) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? init,
    TResult? Function(Story story)? loaded,
    TResult? Function(
            ClientErrorType errorType, String storyId, String message)?
        error,
    TResult? Function(String message)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? init,
    TResult Function(Story story)? loaded,
    TResult Function(ClientErrorType errorType, String storyId, String message)?
        error,
    TResult Function(String message)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateInit value) init,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
    required TResult Function(StoryStateNotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoryStateInit value)? init,
    TResult? Function(StoryStateLoaded value)? loaded,
    TResult? Function(StoryStateError value)? error,
    TResult? Function(StoryStateNotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateInit value)? init,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    TResult Function(StoryStateNotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryStateCopyWith<$Res> {
  factory $StoryStateCopyWith(
          StoryState value, $Res Function(StoryState) then) =
      _$StoryStateCopyWithImpl<$Res, StoryState>;
}

/// @nodoc
class _$StoryStateCopyWithImpl<$Res, $Val extends StoryState>
    implements $StoryStateCopyWith<$Res> {
  _$StoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoryStateInitImplCopyWith<$Res> {
  factory _$$StoryStateInitImplCopyWith(_$StoryStateInitImpl value,
          $Res Function(_$StoryStateInitImpl) then) =
      __$$StoryStateInitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoryStateInitImplCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res, _$StoryStateInitImpl>
    implements _$$StoryStateInitImplCopyWith<$Res> {
  __$$StoryStateInitImplCopyWithImpl(
      _$StoryStateInitImpl _value, $Res Function(_$StoryStateInitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoryStateInitImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoryStateInitImpl implements StoryStateInit {
  const _$StoryStateInitImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StoryState.init(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryStateInitImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryStateInitImplCopyWith<_$StoryStateInitImpl> get copyWith =>
      __$$StoryStateInitImplCopyWithImpl<_$StoryStateInitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) init,
    required TResult Function(Story story) loaded,
    required TResult Function(
            ClientErrorType errorType, String storyId, String message)
        error,
    required TResult Function(String message) notFound,
  }) {
    return init(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? init,
    TResult? Function(Story story)? loaded,
    TResult? Function(
            ClientErrorType errorType, String storyId, String message)?
        error,
    TResult? Function(String message)? notFound,
  }) {
    return init?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? init,
    TResult Function(Story story)? loaded,
    TResult Function(ClientErrorType errorType, String storyId, String message)?
        error,
    TResult Function(String message)? notFound,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateInit value) init,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
    required TResult Function(StoryStateNotFound value) notFound,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoryStateInit value)? init,
    TResult? Function(StoryStateLoaded value)? loaded,
    TResult? Function(StoryStateError value)? error,
    TResult? Function(StoryStateNotFound value)? notFound,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateInit value)? init,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    TResult Function(StoryStateNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class StoryStateInit implements StoryState {
  const factory StoryStateInit({required final String message}) =
      _$StoryStateInitImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StoryStateInitImplCopyWith<_$StoryStateInitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoryStateLoadedImplCopyWith<$Res> {
  factory _$$StoryStateLoadedImplCopyWith(_$StoryStateLoadedImpl value,
          $Res Function(_$StoryStateLoadedImpl) then) =
      __$$StoryStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Story story});

  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class __$$StoryStateLoadedImplCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res, _$StoryStateLoadedImpl>
    implements _$$StoryStateLoadedImplCopyWith<$Res> {
  __$$StoryStateLoadedImplCopyWithImpl(_$StoryStateLoadedImpl _value,
      $Res Function(_$StoryStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_$StoryStateLoadedImpl(
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get story {
    return $StoryCopyWith<$Res>(_value.story, (value) {
      return _then(_value.copyWith(story: value));
    });
  }
}

/// @nodoc

class _$StoryStateLoadedImpl implements StoryStateLoaded {
  const _$StoryStateLoadedImpl({required this.story});

  @override
  final Story story;

  @override
  String toString() {
    return 'StoryState.loaded(story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryStateLoadedImpl &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryStateLoadedImplCopyWith<_$StoryStateLoadedImpl> get copyWith =>
      __$$StoryStateLoadedImplCopyWithImpl<_$StoryStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) init,
    required TResult Function(Story story) loaded,
    required TResult Function(
            ClientErrorType errorType, String storyId, String message)
        error,
    required TResult Function(String message) notFound,
  }) {
    return loaded(story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? init,
    TResult? Function(Story story)? loaded,
    TResult? Function(
            ClientErrorType errorType, String storyId, String message)?
        error,
    TResult? Function(String message)? notFound,
  }) {
    return loaded?.call(story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? init,
    TResult Function(Story story)? loaded,
    TResult Function(ClientErrorType errorType, String storyId, String message)?
        error,
    TResult Function(String message)? notFound,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateInit value) init,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
    required TResult Function(StoryStateNotFound value) notFound,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoryStateInit value)? init,
    TResult? Function(StoryStateLoaded value)? loaded,
    TResult? Function(StoryStateError value)? error,
    TResult? Function(StoryStateNotFound value)? notFound,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateInit value)? init,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    TResult Function(StoryStateNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StoryStateLoaded implements StoryState {
  const factory StoryStateLoaded({required final Story story}) =
      _$StoryStateLoadedImpl;

  Story get story;
  @JsonKey(ignore: true)
  _$$StoryStateLoadedImplCopyWith<_$StoryStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoryStateErrorImplCopyWith<$Res> {
  factory _$$StoryStateErrorImplCopyWith(_$StoryStateErrorImpl value,
          $Res Function(_$StoryStateErrorImpl) then) =
      __$$StoryStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientErrorType errorType, String storyId, String message});
}

/// @nodoc
class __$$StoryStateErrorImplCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res, _$StoryStateErrorImpl>
    implements _$$StoryStateErrorImplCopyWith<$Res> {
  __$$StoryStateErrorImplCopyWithImpl(
      _$StoryStateErrorImpl _value, $Res Function(_$StoryStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
    Object? storyId = null,
    Object? message = null,
  }) {
    return _then(_$StoryStateErrorImpl(
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ClientErrorType,
      storyId: null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoryStateErrorImpl implements StoryStateError {
  const _$StoryStateErrorImpl(
      {required this.errorType, required this.storyId, required this.message});

  @override
  final ClientErrorType errorType;
  @override
  final String storyId;
  @override
  final String message;

  @override
  String toString() {
    return 'StoryState.error(errorType: $errorType, storyId: $storyId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryStateErrorImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.storyId, storyId) || other.storyId == storyId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType, storyId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryStateErrorImplCopyWith<_$StoryStateErrorImpl> get copyWith =>
      __$$StoryStateErrorImplCopyWithImpl<_$StoryStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) init,
    required TResult Function(Story story) loaded,
    required TResult Function(
            ClientErrorType errorType, String storyId, String message)
        error,
    required TResult Function(String message) notFound,
  }) {
    return error(errorType, storyId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? init,
    TResult? Function(Story story)? loaded,
    TResult? Function(
            ClientErrorType errorType, String storyId, String message)?
        error,
    TResult? Function(String message)? notFound,
  }) {
    return error?.call(errorType, storyId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? init,
    TResult Function(Story story)? loaded,
    TResult Function(ClientErrorType errorType, String storyId, String message)?
        error,
    TResult Function(String message)? notFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorType, storyId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateInit value) init,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
    required TResult Function(StoryStateNotFound value) notFound,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoryStateInit value)? init,
    TResult? Function(StoryStateLoaded value)? loaded,
    TResult? Function(StoryStateError value)? error,
    TResult? Function(StoryStateNotFound value)? notFound,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateInit value)? init,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    TResult Function(StoryStateNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoryStateError implements StoryState {
  const factory StoryStateError(
      {required final ClientErrorType errorType,
      required final String storyId,
      required final String message}) = _$StoryStateErrorImpl;

  ClientErrorType get errorType;
  String get storyId;
  String get message;
  @JsonKey(ignore: true)
  _$$StoryStateErrorImplCopyWith<_$StoryStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoryStateNotFoundImplCopyWith<$Res> {
  factory _$$StoryStateNotFoundImplCopyWith(_$StoryStateNotFoundImpl value,
          $Res Function(_$StoryStateNotFoundImpl) then) =
      __$$StoryStateNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoryStateNotFoundImplCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res, _$StoryStateNotFoundImpl>
    implements _$$StoryStateNotFoundImplCopyWith<$Res> {
  __$$StoryStateNotFoundImplCopyWithImpl(_$StoryStateNotFoundImpl _value,
      $Res Function(_$StoryStateNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoryStateNotFoundImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoryStateNotFoundImpl implements StoryStateNotFound {
  const _$StoryStateNotFoundImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StoryState.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryStateNotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryStateNotFoundImplCopyWith<_$StoryStateNotFoundImpl> get copyWith =>
      __$$StoryStateNotFoundImplCopyWithImpl<_$StoryStateNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) init,
    required TResult Function(Story story) loaded,
    required TResult Function(
            ClientErrorType errorType, String storyId, String message)
        error,
    required TResult Function(String message) notFound,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? init,
    TResult? Function(Story story)? loaded,
    TResult? Function(
            ClientErrorType errorType, String storyId, String message)?
        error,
    TResult? Function(String message)? notFound,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? init,
    TResult Function(Story story)? loaded,
    TResult Function(ClientErrorType errorType, String storyId, String message)?
        error,
    TResult Function(String message)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateInit value) init,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
    required TResult Function(StoryStateNotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoryStateInit value)? init,
    TResult? Function(StoryStateLoaded value)? loaded,
    TResult? Function(StoryStateError value)? error,
    TResult? Function(StoryStateNotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateInit value)? init,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    TResult Function(StoryStateNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class StoryStateNotFound implements StoryState {
  const factory StoryStateNotFound({required final String message}) =
      _$StoryStateNotFoundImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StoryStateNotFoundImplCopyWith<_$StoryStateNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
