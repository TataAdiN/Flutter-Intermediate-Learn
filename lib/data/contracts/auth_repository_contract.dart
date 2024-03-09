import '../models/user.dart';
import '../models/user_auth.dart';

abstract class AuthRepositoryContract {
  Future<UserAuth> login({required User user});

  register();
}
