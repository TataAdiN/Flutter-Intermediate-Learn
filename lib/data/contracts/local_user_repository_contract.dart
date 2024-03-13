import '../models/user_auth.dart';

abstract class LocalUserRepositoryContract {
  Future<bool> save({required UserAuth user});
  Future<UserAuth> read();
  Future<bool> remove();
}
