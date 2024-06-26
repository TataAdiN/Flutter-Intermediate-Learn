import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';

import '../data/models/user_auth.dart';
import '../data/repositories/local_user_repository.dart';
import '../data/repositories/user_locale_repository.dart';
import '../events/auth/auth_event.dart';
import '../events/auth/auth_event_change_locale.dart';
import '../events/auth/auth_event_logout.dart';
import '../events/auth/auth_event_refresh.dart';
import '../exceptions/local_storage/local_storage_empty_exception.dart';
import '../states/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  Locale _currentLocale = const Locale("id");
  bool _isLogged = false;
  UserAuth? _userAuth;
  late AppLocalizations localizations;

  void registerLocalization(AppLocalizations localizations) {
    this.localizations = localizations;
  }

  AuthBloc() : super(const AuthStateInit()) {
    on<AuthEventRefresh>(_refresh);
    on<AuthEventLogout>(_logout);
    on<AuthEventChangeLocale>(_changeLocale);
  }

  get isAuth => _isLogged;
  get user => _userAuth;
  get locale => _currentLocale;

  _refresh(AuthEventRefresh event, Emitter<AuthState> emit) async {
    String languageCode = await UserLocaleRepository().read();
    if (languageCode.isNotEmpty) {
      Locale newLocale = Locale(languageCode);
      _currentLocale = newLocale;
      emit(AuthStateLocaleChanged(locale: newLocale));
    }
    try {
      emit(const AuthStateLoading());
      //to show animation authentication loading animation
      await Future.delayed(
        const Duration(seconds: 1),
      );
      _userAuth = await LocalUserRepository().read();
      _isLogged = true;
      emit(
        const AuthStateSuccess(),
      );
    } on LocalStorageEmptyException catch (_) {
      emit(
        AuthStateFail(
          message: localizations.failRefreshLogin,
        ),
      );
    }
  }

  _logout(AuthEventLogout event, Emitter<AuthState> emit) async {
    bool result = await LocalUserRepository().remove();
    if (result) {
      _isLogged = false;
      emit(
        const AuthStateLoggedOut(),
      );
    } else {
      emit(
        const AuthStateFail(message: ''),
      );
    }
  }

  _changeLocale(AuthEventChangeLocale event, Emitter<AuthState> emit) async {
    Locale newLocale = Locale(event.locale);
    _currentLocale = newLocale;
    await UserLocaleRepository().save(languageCode: event.locale);
    emit(AuthStateLocaleChanged(locale: newLocale));
  }

  update() async {
    _userAuth = await LocalUserRepository().read();
    _isLogged = true;
  }

  String greeting(BuildContext context, AppLocalizations appLocalizations) {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return appLocalizations.goodMorning;
    }
    if (hour < 17) {
      return appLocalizations.goodAfternoon;
    }
    return appLocalizations.goodEvening;
  }
}
