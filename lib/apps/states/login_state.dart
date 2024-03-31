import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/enums/client_error_type.dart';

part 'login_state.freezed.dart';

@Freezed(equal: false)
class LoginState with _$LoginState {
  const factory LoginState.init() = LoginStateInit;
  const factory LoginState.loading({required String message}) = LoginStateLoading;
  const factory LoginState.unauthorized({required String message}) = LoginStateUnauthorized;
  const factory LoginState.authorized() = LoginStateAuthorized;
  const factory LoginState.createdAccount({required String message, required String email}) = LoginStateCreatedAccount;
  const factory LoginState.error({required ClientErrorType errorType, required String message}) = LoginStateError;
}
