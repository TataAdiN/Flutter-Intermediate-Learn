import '../../services/local_storage/local_user_service.dart';
import '../contracts/local_user_repository_contract.dart';
import '../models/user_auth.dart';

class LocalUserRepository implements LocalUserRepositoryContract {
  final LocalUserService _localUser = LocalUserService();

  @override
  Future<bool> save({required UserAuth user}) async {
    return await _localUser.saveUser(user);
  }

  @override
  Future<UserAuth> read() async {
    return await _localUser.readUser();
  }

  @override
  Future<bool> remove() async {
    return await _localUser.removeUser();
  }
}
