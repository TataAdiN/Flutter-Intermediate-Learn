// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateInitImplCopyWith<$Res> {
  factory _$$AuthStateInitImplCopyWith(
          _$AuthStateInitImpl value, $Res Function(_$AuthStateInitImpl) then) =
      __$$AuthStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitImpl>
    implements _$$AuthStateInitImplCopyWith<$Res> {
  __$$AuthStateInitImplCopyWithImpl(
      _$AuthStateInitImpl _value, $Res Function(_$AuthStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateInitImpl implements AuthStateInit {
  const _$AuthStateInitImpl();

  @override
  String toString() {
    return 'AuthState.init()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
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
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AuthStateInit implements AuthState {
  const factory AuthStateInit() = _$AuthStateInitImpl;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoadingImpl implements AuthStateLoading {
  const _$AuthStateLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
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
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthStateSuccessImplCopyWith<$Res> {
  factory _$$AuthStateSuccessImplCopyWith(_$AuthStateSuccessImpl value,
          $Res Function(_$AuthStateSuccessImpl) then) =
      __$$AuthStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSuccessImpl>
    implements _$$AuthStateSuccessImplCopyWith<$Res> {
  __$$AuthStateSuccessImplCopyWithImpl(_$AuthStateSuccessImpl _value,
      $Res Function(_$AuthStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateSuccessImpl implements AuthStateSuccess {
  const _$AuthStateSuccessImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess() = _$AuthStateSuccessImpl;
}

/// @nodoc
abstract class _$$AuthStateLocaleChangedImplCopyWith<$Res> {
  factory _$$AuthStateLocaleChangedImplCopyWith(
          _$AuthStateLocaleChangedImpl value,
          $Res Function(_$AuthStateLocaleChangedImpl) then) =
      __$$AuthStateLocaleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$AuthStateLocaleChangedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLocaleChangedImpl>
    implements _$$AuthStateLocaleChangedImplCopyWith<$Res> {
  __$$AuthStateLocaleChangedImplCopyWithImpl(
      _$AuthStateLocaleChangedImpl _value,
      $Res Function(_$AuthStateLocaleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$AuthStateLocaleChangedImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$AuthStateLocaleChangedImpl implements AuthStateLocaleChanged {
  const _$AuthStateLocaleChangedImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AuthState.localeChanged(locale: $locale)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLocaleChangedImplCopyWith<_$AuthStateLocaleChangedImpl>
      get copyWith => __$$AuthStateLocaleChangedImplCopyWithImpl<
          _$AuthStateLocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class AuthStateLocaleChanged implements AuthState {
  const factory AuthStateLocaleChanged({required final Locale locale}) =
      _$AuthStateLocaleChangedImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$AuthStateLocaleChangedImplCopyWith<_$AuthStateLocaleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateLoggedOutImplCopyWith<$Res> {
  factory _$$AuthStateLoggedOutImplCopyWith(_$AuthStateLoggedOutImpl value,
          $Res Function(_$AuthStateLoggedOutImpl) then) =
      __$$AuthStateLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoggedOutImpl>
    implements _$$AuthStateLoggedOutImplCopyWith<$Res> {
  __$$AuthStateLoggedOutImplCopyWithImpl(_$AuthStateLoggedOutImpl _value,
      $Res Function(_$AuthStateLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoggedOutImpl implements AuthStateLoggedOut {
  const _$AuthStateLoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoggedOut implements AuthState {
  const factory AuthStateLoggedOut() = _$AuthStateLoggedOutImpl;
}

/// @nodoc
abstract class _$$AuthStateFailImplCopyWith<$Res> {
  factory _$$AuthStateFailImplCopyWith(
          _$AuthStateFailImpl value, $Res Function(_$AuthStateFailImpl) then) =
      __$$AuthStateFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthStateFailImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateFailImpl>
    implements _$$AuthStateFailImplCopyWith<$Res> {
  __$$AuthStateFailImplCopyWithImpl(
      _$AuthStateFailImpl _value, $Res Function(_$AuthStateFailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthStateFailImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateFailImpl implements AuthStateFail {
  const _$AuthStateFailImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.fail(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateFailImplCopyWith<_$AuthStateFailImpl> get copyWith =>
      __$$AuthStateFailImplCopyWithImpl<_$AuthStateFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function() loggedOut,
    required TResult Function(String message) fail,
  }) {
    return fail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? fail,
  }) {
    return fail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Locale locale)? localeChanged,
    TResult Function()? loggedOut,
    TResult Function(String message)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateLocaleChanged value) localeChanged,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
    required TResult Function(AuthStateFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInit value)? init,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateLocaleChanged value)? localeChanged,
    TResult? Function(AuthStateLoggedOut value)? loggedOut,
    TResult? Function(AuthStateFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateLocaleChanged value)? localeChanged,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    TResult Function(AuthStateFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class AuthStateFail implements AuthState {
  const factory AuthStateFail({required final String message}) =
      _$AuthStateFailImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthStateFailImplCopyWith<_$AuthStateFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
