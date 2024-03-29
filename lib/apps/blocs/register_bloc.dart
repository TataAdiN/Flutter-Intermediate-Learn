import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/localizations.dart';
import '../data/enums/client_error_type.dart';
import '../data/repositories/auth_repository.dart';
import '../events/register/register_event.dart';
import '../events/register/register_event_action.dart';
import '../exceptions/apis/bad_request_exception.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/register/register_state.dart';
import '../states/register/register_state_created.dart';
import '../states/register/register_state_error.dart';
import '../states/register/register_state_init.dart';
import '../states/register/register_state_loading.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  AppLocalizations localization;

  RegisterBloc({required this.localization}) : super(RegisterStateInit()) {
    on<RegisterEventAction>(_register);
  }

  _register(RegisterEventAction event, Emitter<RegisterState> emit) async {
    emit(RegisterStateLoading());
    try {
      await AuthRepository().register(user: event.user);
      emit(
        RegisterStateCreated(
          message: localization.accountCreatedInfo,
          email: event.user.email!,
        ),
      );
    } on SocketException catch (_) {
      emit(
        RegisterStateError(
          errorType: ClientErrorType.noInternet,
          message: localization.noInternetFix,
        ),
      );
    } on UnknownException catch (exception) {
      emit(
        RegisterStateError(
          errorType: ClientErrorType.unknown,
          message: exception.message,
        ),
      );
    } on BadRequestException catch (exception) {
      emit(
        RegisterStateError(
          errorType: ClientErrorType.badRequest,
          message: exception.message,
        ),
      );
    }
  }
}
