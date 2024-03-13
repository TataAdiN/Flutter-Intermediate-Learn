import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/enums/client_error_type.dart';
import '../events/register/register_event.dart';
import '../events/register/register_event_action.dart';
import '../states/register/register_state.dart';
import '../states/register/register_state_created.dart';
import '../states/register/register_state_error.dart';
import '../states/register/register_state_init.dart';
import '../states/register/register_state_loading.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterStateInit()) {
    on<RegisterEventAction>(_register);
  }

  _register(RegisterEventAction event, Emitter<RegisterState> emit) async {
    emit(RegisterStateLoading());
    print(event.user.name);
    await Future.delayed(const Duration(seconds: 3), () {});
    //emit(RegisterStateError(errorType: ClientErrorType.unknown, message: 'message'));
    emit(
      RegisterStateCreated(
        message: 'account is created, now you can sign in',
        email: event.user.email!,
      ),
    );
  }
}
