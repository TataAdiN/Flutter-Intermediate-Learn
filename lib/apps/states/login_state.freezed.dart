// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateInitImplCopyWith<$Res> {
  factory _$$LoginStateInitImplCopyWith(_$LoginStateInitImpl value,
          $Res Function(_$LoginStateInitImpl) then) =
      __$$LoginStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateInitImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateInitImpl>
    implements _$$LoginStateInitImplCopyWith<$Res> {
  __$$LoginStateInitImplCopyWithImpl(
      _$LoginStateInitImpl _value, $Res Function(_$LoginStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateInitImpl implements LoginStateInit {
  const _$LoginStateInitImpl();

  @override
  String toString() {
    return 'LoginState.init()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LoginStateInit implements LoginState {
  const factory LoginStateInit() = _$LoginStateInitImpl;
}

/// @nodoc
abstract class _$$LoginStateLoadingImplCopyWith<$Res> {
  factory _$$LoginStateLoadingImplCopyWith(_$LoginStateLoadingImpl value,
          $Res Function(_$LoginStateLoadingImpl) then) =
      __$$LoginStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginStateLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadingImpl>
    implements _$$LoginStateLoadingImplCopyWith<$Res> {
  __$$LoginStateLoadingImplCopyWithImpl(_$LoginStateLoadingImpl _value,
      $Res Function(_$LoginStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginStateLoadingImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateLoadingImpl implements LoginStateLoading {
  const _$LoginStateLoadingImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.loading(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateLoadingImplCopyWith<_$LoginStateLoadingImpl> get copyWith =>
      __$$LoginStateLoadingImplCopyWithImpl<_$LoginStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading({required final String message}) =
      _$LoginStateLoadingImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginStateLoadingImplCopyWith<_$LoginStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateUnauthorizedImplCopyWith<$Res> {
  factory _$$LoginStateUnauthorizedImplCopyWith(
          _$LoginStateUnauthorizedImpl value,
          $Res Function(_$LoginStateUnauthorizedImpl) then) =
      __$$LoginStateUnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginStateUnauthorizedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateUnauthorizedImpl>
    implements _$$LoginStateUnauthorizedImplCopyWith<$Res> {
  __$$LoginStateUnauthorizedImplCopyWithImpl(
      _$LoginStateUnauthorizedImpl _value,
      $Res Function(_$LoginStateUnauthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginStateUnauthorizedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateUnauthorizedImpl implements LoginStateUnauthorized {
  const _$LoginStateUnauthorizedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.unauthorized(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateUnauthorizedImplCopyWith<_$LoginStateUnauthorizedImpl>
      get copyWith => __$$LoginStateUnauthorizedImplCopyWithImpl<
          _$LoginStateUnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class LoginStateUnauthorized implements LoginState {
  const factory LoginStateUnauthorized({required final String message}) =
      _$LoginStateUnauthorizedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginStateUnauthorizedImplCopyWith<_$LoginStateUnauthorizedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateAuthorizedImplCopyWith<$Res> {
  factory _$$LoginStateAuthorizedImplCopyWith(_$LoginStateAuthorizedImpl value,
          $Res Function(_$LoginStateAuthorizedImpl) then) =
      __$$LoginStateAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateAuthorizedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateAuthorizedImpl>
    implements _$$LoginStateAuthorizedImplCopyWith<$Res> {
  __$$LoginStateAuthorizedImplCopyWithImpl(_$LoginStateAuthorizedImpl _value,
      $Res Function(_$LoginStateAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateAuthorizedImpl implements LoginStateAuthorized {
  const _$LoginStateAuthorizedImpl();

  @override
  String toString() {
    return 'LoginState.authorized()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class LoginStateAuthorized implements LoginState {
  const factory LoginStateAuthorized() = _$LoginStateAuthorizedImpl;
}

/// @nodoc
abstract class _$$LoginStateCreatedAccountImplCopyWith<$Res> {
  factory _$$LoginStateCreatedAccountImplCopyWith(
          _$LoginStateCreatedAccountImpl value,
          $Res Function(_$LoginStateCreatedAccountImpl) then) =
      __$$LoginStateCreatedAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String email});
}

/// @nodoc
class __$$LoginStateCreatedAccountImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateCreatedAccountImpl>
    implements _$$LoginStateCreatedAccountImplCopyWith<$Res> {
  __$$LoginStateCreatedAccountImplCopyWithImpl(
      _$LoginStateCreatedAccountImpl _value,
      $Res Function(_$LoginStateCreatedAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
  }) {
    return _then(_$LoginStateCreatedAccountImpl(
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

class _$LoginStateCreatedAccountImpl implements LoginStateCreatedAccount {
  const _$LoginStateCreatedAccountImpl(
      {required this.message, required this.email});

  @override
  final String message;
  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.createdAccount(message: $message, email: $email)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateCreatedAccountImplCopyWith<_$LoginStateCreatedAccountImpl>
      get copyWith => __$$LoginStateCreatedAccountImplCopyWithImpl<
          _$LoginStateCreatedAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return createdAccount(message, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return createdAccount?.call(message, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
    TResult Function(ClientErrorType errorType, String message)? error,
    required TResult orElse(),
  }) {
    if (createdAccount != null) {
      return createdAccount(message, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) {
    return createdAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) {
    return createdAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (createdAccount != null) {
      return createdAccount(this);
    }
    return orElse();
  }
}

abstract class LoginStateCreatedAccount implements LoginState {
  const factory LoginStateCreatedAccount(
      {required final String message,
      required final String email}) = _$LoginStateCreatedAccountImpl;

  String get message;
  String get email;
  @JsonKey(ignore: true)
  _$$LoginStateCreatedAccountImplCopyWith<_$LoginStateCreatedAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateErrorImplCopyWith<$Res> {
  factory _$$LoginStateErrorImplCopyWith(_$LoginStateErrorImpl value,
          $Res Function(_$LoginStateErrorImpl) then) =
      __$$LoginStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientErrorType errorType, String message});
}

/// @nodoc
class __$$LoginStateErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateErrorImpl>
    implements _$$LoginStateErrorImplCopyWith<$Res> {
  __$$LoginStateErrorImplCopyWithImpl(
      _$LoginStateErrorImpl _value, $Res Function(_$LoginStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
    Object? message = null,
  }) {
    return _then(_$LoginStateErrorImpl(
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

class _$LoginStateErrorImpl implements LoginStateError {
  const _$LoginStateErrorImpl({required this.errorType, required this.message});

  @override
  final ClientErrorType errorType;
  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(errorType: $errorType, message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateErrorImplCopyWith<_$LoginStateErrorImpl> get copyWith =>
      __$$LoginStateErrorImplCopyWithImpl<_$LoginStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) loading,
    required TResult Function(String message) unauthorized,
    required TResult Function() authorized,
    required TResult Function(String message, String email) createdAccount,
    required TResult Function(ClientErrorType errorType, String message) error,
  }) {
    return error(errorType, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? loading,
    TResult? Function(String message)? unauthorized,
    TResult? Function()? authorized,
    TResult? Function(String message, String email)? createdAccount,
    TResult? Function(ClientErrorType errorType, String message)? error,
  }) {
    return error?.call(errorType, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? loading,
    TResult Function(String message)? unauthorized,
    TResult Function()? authorized,
    TResult Function(String message, String email)? createdAccount,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateUnauthorized value) unauthorized,
    required TResult Function(LoginStateAuthorized value) authorized,
    required TResult Function(LoginStateCreatedAccount value) createdAccount,
    required TResult Function(LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateUnauthorized value)? unauthorized,
    TResult? Function(LoginStateAuthorized value)? authorized,
    TResult? Function(LoginStateCreatedAccount value)? createdAccount,
    TResult? Function(LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateUnauthorized value)? unauthorized,
    TResult Function(LoginStateAuthorized value)? authorized,
    TResult Function(LoginStateCreatedAccount value)? createdAccount,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError(
      {required final ClientErrorType errorType,
      required final String message}) = _$LoginStateErrorImpl;

  ClientErrorType get errorType;
  String get message;
  @JsonKey(ignore: true)
  _$$LoginStateErrorImplCopyWith<_$LoginStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
