import '../../apps/services/remote_api/authentication_api.dart';
import '../contracts/auth_repository_contract.dart';
import '../models/user.dart';
import '../models/user_auth.dart';

class AuthRepository implements AuthRepositoryContract {
  final AuthenticationAPI _api = AuthenticationAPI();

  @override
  Future<UserAuth> login({required User user}) async {
    return await _api.login(user);
  }

  @override
  register() {
    // TODO: implement register
    throw UnimplementedError();
  }
}
