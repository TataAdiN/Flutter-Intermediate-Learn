abstract class UserLocaleRepositoryContract {
  Future<bool> save({required String languageCode});
  Future<String> read();
}
