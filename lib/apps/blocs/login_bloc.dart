import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/enums/client_error_type.dart';
import '../../data/models/user.dart';
import '../../data/models/user_auth.dart';
import '../../data/repositories/auth_repository.dart';
import '../events/login/login_event.dart';
import '../events/login/login_event_auth.dart';
import '../exceptions/apis/bad_request_exception.dart';
import '../exceptions/apis/unauthorized_exception.dart';
import '../exceptions/apis/unknown_exception.dart';
import '../states/login/login_state.dart';
import '../states/login/login_state_error.dart';
import '../states/login/login_state_init.dart';
import '../states/login/login_state_loading.dart';
import '../states/login/login_state_unauthorized.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginStateInit()) {
    on<LoginEventAuth>(_auth);
  }

  _auth(LoginEventAuth event, Emitter<LoginState> emit) async {
    emit(LoginStateLoading());
    User user = User(email: event.email, password: event.password);
    try {
      UserAuth userAuth = await AuthRepository().login(user: user);
      print(userAuth);
      //var isStored = await UserSecureRepository().save(userAuth: userAuth);
      //if (isStored) {
      //  emit(LoginAuthorizedState());
      // } else {
      //  emit(LoginErrorState('Failed to store data to secure storage', 0));
      //}
    } on SocketException catch (exception) {
      emit(
        LoginStateError(
          errorType: ClientErrorType.noInternet,
          message: 'Please fix your connection and try again',
        ),
      );
    } on UnauthorizedException catch (exception) {
      emit(
        LoginStateUnauthorized(
          message: exception.message,
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
}
