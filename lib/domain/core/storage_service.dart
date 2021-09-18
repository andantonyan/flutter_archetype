import 'dart:ui';

abstract class StorageService {
  Future<void> init();

  Future<String?> getAuthToken();

  Future<void> saveAuthToken(String token);

  Future<void> deleteAuthToken();

  Future<Locale> getSelectedLocale();

  Future<void> saveSelectedLocale(Locale locale);
}
