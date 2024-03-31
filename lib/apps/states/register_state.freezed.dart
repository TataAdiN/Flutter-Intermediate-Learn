// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message, String email) created,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message, String email)? created,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message, String email)? created,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStateInit value) init,
    required TResult Function(RegisterStateLoading value) loading,
    required TResult Function(RegisterStateCreated value) created,
    required TResult Function(RegisterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateInit value)? init,
    TResult? Function(RegisterStateLoading value)? loading,
    TResult? Function(RegisterStateCreated value)? created,
    TResult? Function(RegisterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStateInit value)? init,
    TResult Function(RegisterStateLoading value)? loading,
    TResult Function(RegisterStateCreated value)? created,
    TResult Function(RegisterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterStateInitImplCopyWith<$Res> {
  factory _$$RegisterStateInitImplCopyWith(_$RegisterStateInitImpl value,
          $Res Function(_$RegisterStateInitImpl) then) =
      __$$RegisterStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterStateInitImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateInitImpl>
    implements _$$RegisterStateInitImplCopyWith<$Res> {
  __$$RegisterStateInitImplCopyWithImpl(_$RegisterStateInitImpl _value,
      $Res Function(_$RegisterStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterStateInitImpl implements RegisterStateInit {
  const _$RegisterStateInitImpl();

  @override
  String toString() {
    return 'RegisterState.init()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message, String email) created,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message, String email)? created,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message, String email)? created,
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
    required TResult Function(RegisterStateInit value) init,
    required TResult Function(RegisterStateLoading value) loading,
    required TResult Function(RegisterStateCreated value) created,
    required TResult Function(RegisterStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateInit value)? init,
    TResult? Function(RegisterStateLoading value)? loading,
    TResult? Function(RegisterStateCreated value)? created,
    TResult? Function(RegisterStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStateInit value)? init,
    TResult Function(RegisterStateLoading value)? loading,
    TResult Function(RegisterStateCreated value)? created,
    TResult Function(RegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class RegisterStateInit implements RegisterState {
  const factory RegisterStateInit() = _$RegisterStateInitImpl;
}

/// @nodoc
abstract class _$$RegisterStateLoadingImplCopyWith<$Res> {
  factory _$$RegisterStateLoadingImplCopyWith(_$RegisterStateLoadingImpl value,
          $Res Function(_$RegisterStateLoadingImpl) then) =
      __$$RegisterStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterStateLoadingImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateLoadingImpl>
    implements _$$RegisterStateLoadingImplCopyWith<$Res> {
  __$$RegisterStateLoadingImplCopyWithImpl(_$RegisterStateLoadingImpl _value,
      $Res Function(_$RegisterStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterStateLoadingImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterStateLoadingImpl implements RegisterStateLoading {
  const _$RegisterStateLoadingImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterState.loading(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateLoadingImplCopyWith<_$RegisterStateLoadingImpl>
      get copyWith =>
          __$$RegisterStateLoadingImplCopyWithImpl<_$RegisterStateLoadingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message, String email) created,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message, String email)? created,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message, String email)? created,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStateInit value) init,
    required TResult Function(RegisterStateLoading value) loading,
    required TResult Function(RegisterStateCreated value) created,
    required TResult Function(RegisterStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateInit value)? init,
    TResult? Function(RegisterStateLoading value)? loading,
    TResult? Function(RegisterStateCreated value)? created,
    TResult? Function(RegisterStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStateInit value)? init,
    TResult Function(RegisterStateLoading value)? loading,
    TResult Function(RegisterStateCreated value)? created,
    TResult Function(RegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterStateLoading implements RegisterState {
  const factory RegisterStateLoading({required final String message}) =
      _$RegisterStateLoadingImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RegisterStateLoadingImplCopyWith<_$RegisterStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStateCreatedImplCopyWith<$Res> {
  factory _$$RegisterStateCreatedImplCopyWith(_$RegisterStateCreatedImpl value,
          $Res Function(_$RegisterStateCreatedImpl) then) =
      __$$RegisterStateCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String email});
}

/// @nodoc
class __$$RegisterStateCreatedImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateCreatedImpl>
    implements _$$RegisterStateCreatedImplCopyWith<$Res> {
  __$$RegisterStateCreatedImplCopyWithImpl(_$RegisterStateCreatedImpl _value,
      $Res Function(_$RegisterStateCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
  }) {
    return _then(_$RegisterStateCreatedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterStateCreatedImpl implements RegisterStateCreated {
  const _$RegisterStateCreatedImpl(
      {required this.message, required this.email});

  @override
  final String message;
  @override
  final String email;

  @override
  String toString() {
    return 'RegisterState.created(message: $message, email: $email)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateCreatedImplCopyWith<_$RegisterStateCreatedImpl>
      get copyWith =>
          __$$RegisterStateCreatedImplCopyWithImpl<_$RegisterStateCreatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message, String email) created,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return created(message, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message, String email)? created,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return created?.call(message, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message, String email)? created,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(message, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterStateInit value) init,
    required TResult Function(RegisterStateLoading value) loading,
    required TResult Function(RegisterStateCreated value) created,
    required TResult Function(RegisterStateError value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateInit value)? init,
    TResult? Function(RegisterStateLoading value)? loading,
    TResult? Function(RegisterStateCreated value)? created,
    TResult? Function(RegisterStateError value)? error,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStateInit value)? init,
    TResult Function(RegisterStateLoading value)? loading,
    TResult Function(RegisterStateCreated value)? created,
    TResult Function(RegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class RegisterStateCreated implements RegisterState {
  const factory RegisterStateCreated(
      {required final String message,
      required final String email}) = _$RegisterStateCreatedImpl;

  String get message;
  String get email;
  @JsonKey(ignore: true)
  _$$RegisterStateCreatedImplCopyWith<_$RegisterStateCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStateErrorImplCopyWith<$Res> {
  factory _$$RegisterStateErrorImplCopyWith(_$RegisterStateErrorImpl value,
          $Res Function(_$RegisterStateErrorImpl) then) =
      __$$RegisterStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientErrorType errorType, String message});
}

/// @nodoc
class __$$RegisterStateErrorImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateErrorImpl>
    implements _$$RegisterStateErrorImplCopyWith<$Res> {
  __$$RegisterStateErrorImplCopyWithImpl(_$RegisterStateErrorImpl _value,
      $Res Function(_$RegisterStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
    Object? message = null,
  }) {
    return _then(_$RegisterStateErrorImpl(
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

class _$RegisterStateErrorImpl implements RegisterStateError {
  const _$RegisterStateErrorImpl(
      {required this.errorType, required this.message});

  @override
  final ClientErrorType errorType;
  @override
  final String message;

  @override
  String toString() {
    return 'RegisterState.error(errorType: $errorType, message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateErrorImplCopyWith<_$RegisterStateErrorImpl> get copyWith =>
      __$$RegisterStateErrorImplCopyWithImpl<_$RegisterStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message, String email) created,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return error(errorType, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message, String email)? created,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return error?.call(errorType, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message, String email)? created,
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
    required TResult Function(RegisterStateInit value) init,
    required TResult Function(RegisterStateLoading value) loading,
    required TResult Function(RegisterStateCreated value) created,
    required TResult Function(RegisterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateInit value)? init,
    TResult? Function(RegisterStateLoading value)? loading,
    TResult? Function(RegisterStateCreated value)? created,
    TResult? Function(RegisterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterStateInit value)? init,
    TResult Function(RegisterStateLoading value)? loading,
    TResult Function(RegisterStateCreated value)? created,
    TResult Function(RegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterStateError implements RegisterState {
  const factory RegisterStateError(
      {required final ClientErrorType errorType,
      required final String message}) = _$RegisterStateErrorImpl;

  ClientErrorType get errorType;
  String get message;
  @JsonKey(ignore: true)
  _$$RegisterStateErrorImplCopyWith<_$RegisterStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
