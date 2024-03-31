import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/enums/client_error_type.dart';

part 'register_state.freezed.dart';

@Freezed(equal: false)
class RegisterState with _$RegisterState {
  const factory RegisterState.init() = RegisterStateInit;
  const factory RegisterState.loading({required String message}) = RegisterStateLoading;
  const factory RegisterState.created({required String message, required String email}) = RegisterStateCreated;
  const factory RegisterState.error({required ClientErrorType errorType, required String message}) = RegisterStateError;
}
