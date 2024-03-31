import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../data/enums/client_error_type.dart';
import '../data/models/user.dart';
import '../data/models/user_auth.dart';
import '../data/repositories/auth_repository.dart';
import '../data/repositories/local_user_repository.dart';
import '../events/login/login_event.dart';
import '../events/login/login_event_auth.dart';
import '../events/login/login_event_created_account.dart';
import '../exceptions/apis/bad_request_exception.dart';
import '../exceptions/apis/unauthorized_exception.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AppLocalizations localization;

  LoginBloc({required this.localization}) : super(const LoginStateInit()) {
    on<LoginEventAuth>(_auth);
    on<LoginEventCreatedAccount>(_notifyCreatedAccount);
  }

  _auth(LoginEventAuth event, Emitter<LoginState> emit) async {
    emit(LoginStateLoading(message: localization.wait));
    User user = User(email: event.email, password: event.password);
    try {
      UserAuth userAuth = await AuthRepository().login(user: user);
      userAuth = userAuth.copyWith(password: user.password!);
      bool isStored = await LocalUserRepository().save(user: userAuth);
      if (isStored) {
        await event.authBloc.update();
        emit(
          const LoginStateAuthorized(),
        );
      } else {
        emit(
          LoginStateError(
            errorType: ClientErrorType.unknown,
            message: localization.failSaveLocal,
          ),
        );
      }
    } on SocketException catch (_) {
      emit(
        LoginStateError(
          errorType: ClientErrorType.noInternet,
          message: localization.noInternetFix,
        ),
      );
    } on UnauthorizedException catch (_) {
      emit(
        LoginStateUnauthorized(
          message: localization.failLoginInfo,
        ),
      );
    } on UnknownException catch (exception) {
      emit(
        LoginStateError(
          errorType: ClientErrorType.unknown,
          message: exception.message,
        ),
      );
    } on BadRequestException catch (exception) {
      emit(
        LoginStateError(
          errorType: ClientErrorType.badRequest,
          message: exception.message,
        ),
      );
    }
  }

  _notifyCreatedAccount(
    LoginEventCreatedAccount event,
    Emitter<LoginState> emit,
  ) {
    Map<String, dynamic> result = event.result;
    emit(
      LoginStateCreatedAccount(
        message: result['message'],
        email: result['email'],
      ),
    );
  }
}
