import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/user_auth.dart';
import '../../exceptions/local_storage/local_storage_empty_exception.dart';

class LocalUserService {
  static const user = 'USER';
  late Future<SharedPreferences> sharedPreferences;

  LocalUserService() {
    sharedPreferences = SharedPreferences.getInstance();
  }

  Future<bool> saveUser(UserAuth userAuth) async {
    var prefs = await sharedPreferences;
    return await prefs.setString(
      user,
      jsonEncode(
        userAuth.toJson(),
      ),
    );
  }

  Future<UserAuth> readUser() async {
    var prefs = await sharedPreferences;
    String? userJson = prefs.getString(user);
    if (userJson == null) {
      return throw LocalStorageEmptyException(message: 'No user saved');
    } else {
      return UserAuth.fromJson(
        jsonDecode(userJson),
      );
    }
  }

  Future<bool> removeUser() async {
    var prefs = await sharedPreferences;
    return await prefs.remove(user);
  }
}
