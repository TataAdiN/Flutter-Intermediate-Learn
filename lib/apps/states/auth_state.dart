import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@Freezed(equal: false)
class AuthState with _$AuthState {
  const factory AuthState.init() = AuthStateInit;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.success() = AuthStateSuccess;
  const factory AuthState.localeChanged({required Locale locale}) = AuthStateLocaleChanged;
  const factory AuthState.loggedOut() = AuthStateLoggedOut;
  const factory AuthState.fail({required String message}) = AuthStateFail;
}
