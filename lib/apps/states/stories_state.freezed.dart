// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Story> stories, Paginate paginate) loaded,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Story> stories, Paginate paginate)? loaded,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Story> stories, Paginate paginate)? loaded,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInit value) init,
    required TResult Function(StoriesStateLoading value) loading,
    required TResult Function(StoriesStateLoaded value) loaded,
    required TResult Function(StoriesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInit value)? init,
    TResult? Function(StoriesStateLoading value)? loading,
    TResult? Function(StoriesStateLoaded value)? loaded,
    TResult? Function(StoriesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInit value)? init,
    TResult Function(StoriesStateLoading value)? loading,
    TResult Function(StoriesStateLoaded value)? loaded,
    TResult Function(StoriesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoriesStateInitImplCopyWith<$Res> {
  factory _$$StoriesStateInitImplCopyWith(_$StoriesStateInitImpl value,
          $Res Function(_$StoriesStateInitImpl) then) =
      __$$StoriesStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesStateInitImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateInitImpl>
    implements _$$StoriesStateInitImplCopyWith<$Res> {
  __$$StoriesStateInitImplCopyWithImpl(_$StoriesStateInitImpl _value,
      $Res Function(_$StoriesStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesStateInitImpl implements StoriesStateInit {
  const _$StoriesStateInitImpl();

  @override
  String toString() {
    return 'StoriesState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoriesStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Story> stories, Paginate paginate) loaded,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Story> stories, Paginate paginate)? loaded,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Story> stories, Paginate paginate)? loaded,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInit value) init,
    required TResult Function(StoriesStateLoading value) loading,
    required TResult Function(StoriesStateLoaded value) loaded,
    required TResult Function(StoriesStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInit value)? init,
    TResult? Function(StoriesStateLoading value)? loading,
    TResult? Function(StoriesStateLoaded value)? loaded,
    TResult? Function(StoriesStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInit value)? init,
    TResult Function(StoriesStateLoading value)? loading,
    TResult Function(StoriesStateLoaded value)? loaded,
    TResult Function(StoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class StoriesStateInit implements StoriesState {
  const factory StoriesStateInit() = _$StoriesStateInitImpl;
}

/// @nodoc
abstract class _$$StoriesStateLoadingImplCopyWith<$Res> {
  factory _$$StoriesStateLoadingImplCopyWith(_$StoriesStateLoadingImpl value,
          $Res Function(_$StoriesStateLoadingImpl) then) =
      __$$StoriesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesStateLoadingImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateLoadingImpl>
    implements _$$StoriesStateLoadingImplCopyWith<$Res> {
  __$$StoriesStateLoadingImplCopyWithImpl(_$StoriesStateLoadingImpl _value,
      $Res Function(_$StoriesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesStateLoadingImpl implements StoriesStateLoading {
  const _$StoriesStateLoadingImpl();

  @override
  String toString() {
    return 'StoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Story> stories, Paginate paginate) loaded,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Story> stories, Paginate paginate)? loaded,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Story> stories, Paginate paginate)? loaded,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInit value) init,
    required TResult Function(StoriesStateLoading value) loading,
    required TResult Function(StoriesStateLoaded value) loaded,
    required TResult Function(StoriesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInit value)? init,
    TResult? Function(StoriesStateLoading value)? loading,
    TResult? Function(StoriesStateLoaded value)? loaded,
    TResult? Function(StoriesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInit value)? init,
    TResult Function(StoriesStateLoading value)? loading,
    TResult Function(StoriesStateLoaded value)? loaded,
    TResult Function(StoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StoriesStateLoading implements StoriesState {
  const factory StoriesStateLoading() = _$StoriesStateLoadingImpl;
}

/// @nodoc
abstract class _$$StoriesStateLoadedImplCopyWith<$Res> {
  factory _$$StoriesStateLoadedImplCopyWith(_$StoriesStateLoadedImpl value,
          $Res Function(_$StoriesStateLoadedImpl) then) =
      __$$StoriesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Story> stories, Paginate paginate});
}

/// @nodoc
class __$$StoriesStateLoadedImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateLoadedImpl>
    implements _$$StoriesStateLoadedImplCopyWith<$Res> {
  __$$StoriesStateLoadedImplCopyWithImpl(_$StoriesStateLoadedImpl _value,
      $Res Function(_$StoriesStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
    Object? paginate = null,
  }) {
    return _then(_$StoriesStateLoadedImpl(
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
      paginate: null == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as Paginate,
    ));
  }
}

/// @nodoc

class _$StoriesStateLoadedImpl implements StoriesStateLoaded {
  const _$StoriesStateLoadedImpl(
      {required final List<Story> stories, required this.paginate})
      : _stories = stories;

  final List<Story> _stories;
  @override
  List<Story> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  final Paginate paginate;

  @override
  String toString() {
    return 'StoriesState.loaded(stories: $stories, paginate: $paginate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            (identical(other.paginate, paginate) ||
                other.paginate == paginate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stories), paginate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesStateLoadedImplCopyWith<_$StoriesStateLoadedImpl> get copyWith =>
      __$$StoriesStateLoadedImplCopyWithImpl<_$StoriesStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Story> stories, Paginate paginate) loaded,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return loaded(stories, paginate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Story> stories, Paginate paginate)? loaded,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return loaded?.call(stories, paginate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Story> stories, Paginate paginate)? loaded,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stories, paginate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInit value) init,
    required TResult Function(StoriesStateLoading value) loading,
    required TResult Function(StoriesStateLoaded value) loaded,
    required TResult Function(StoriesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInit value)? init,
    TResult? Function(StoriesStateLoading value)? loading,
    TResult? Function(StoriesStateLoaded value)? loaded,
    TResult? Function(StoriesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInit value)? init,
    TResult Function(StoriesStateLoading value)? loading,
    TResult Function(StoriesStateLoaded value)? loaded,
    TResult Function(StoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StoriesStateLoaded implements StoriesState {
  const factory StoriesStateLoaded(
      {required final List<Story> stories,
      required final Paginate paginate}) = _$StoriesStateLoadedImpl;

  List<Story> get stories;
  Paginate get paginate;
  @JsonKey(ignore: true)
  _$$StoriesStateLoadedImplCopyWith<_$StoriesStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesStateErrorImplCopyWith<$Res> {
  factory _$$StoriesStateErrorImplCopyWith(_$StoriesStateErrorImpl value,
          $Res Function(_$StoriesStateErrorImpl) then) =
      __$$StoriesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientErrorType errorType, String message});
}

/// @nodoc
class __$$StoriesStateErrorImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateErrorImpl>
    implements _$$StoriesStateErrorImplCopyWith<$Res> {
  __$$StoriesStateErrorImplCopyWithImpl(_$StoriesStateErrorImpl _value,
      $Res Function(_$StoriesStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
    Object? message = null,
  }) {
    return _then(_$StoriesStateErrorImpl(
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ClientErrorType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoriesStateErrorImpl implements StoriesStateError {
  const _$StoriesStateErrorImpl(
      {required this.errorType, required this.message});

  @override
  final ClientErrorType errorType;
  @override
  final String message;

  @override
  String toString() {
    return 'StoriesState.error(errorType: $errorType, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateErrorImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesStateErrorImplCopyWith<_$StoriesStateErrorImpl> get copyWith =>
      __$$StoriesStateErrorImplCopyWithImpl<_$StoriesStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Story> stories, Paginate paginate) loaded,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return error(errorType, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<Story> stories, Paginate paginate)? loaded,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return error?.call(errorType, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Story> stories, Paginate paginate)? loaded,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorType, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInit value) init,
    required TResult Function(StoriesStateLoading value) loading,
    required TResult Function(StoriesStateLoaded value) loaded,
    required TResult Function(StoriesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInit value)? init,
    TResult? Function(StoriesStateLoading value)? loading,
    TResult? Function(StoriesStateLoaded value)? loaded,
    TResult? Function(StoriesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInit value)? init,
    TResult Function(StoriesStateLoading value)? loading,
    TResult Function(StoriesStateLoaded value)? loaded,
    TResult Function(StoriesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoriesStateError implements StoriesState {
  const factory StoriesStateError(
      {required final ClientErrorType errorType,
      required final String message}) = _$StoriesStateErrorImpl;

  ClientErrorType get errorType;
  String get message;
  @JsonKey(ignore: true)
  _$$StoriesStateErrorImplCopyWith<_$StoriesStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
