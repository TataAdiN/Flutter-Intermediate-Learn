import '../../services/local_storage/user_locale_service.dart';
import '../contracts/user_locale_repository_contract.dart';

class UserLocaleRepository implements UserLocaleRepositoryContract {
  final UserLocaleService _userLocale = UserLocaleService();

  @override
  Future<String> read() async {
    return await _userLocale.readLocale();
  }

  @override
  Future<bool> save({required String languageCode}) async {
    return await _userLocale.saveLocale(languageCode);
  }
}
