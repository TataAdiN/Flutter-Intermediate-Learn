import 'package:shared_preferences/shared_preferences.dart';

class UserLocaleService {
  static const locale = 'LOCALE';
  late Future<SharedPreferences> _sharedPreferences;

  UserLocaleService() {
    _sharedPreferences = SharedPreferences.getInstance();
  }

  Future<bool> saveLocale(String languageCode) async {
    var prefs = await _sharedPreferences;
    return await prefs.setString(locale, languageCode);
  }

  Future<String> readLocale() async {
    var prefs = await _sharedPreferences;
    String? userLocale = prefs.getString(locale);
    if (userLocale == null) {
      return '';
    } else {
      return userLocale;
    }
  }
}
