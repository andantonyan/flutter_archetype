import 'dart:ui';

abstract class StorageService {
  Future<void> init();

  Future<bool> canShowIntroScreen();

  Future<void> disableIntroScreen();

  Future<String?> getAuthToken();

  Future<void> saveAuthToken(String token);

  Future<void> deleteAuthToken();

  Future<Locale> getSelectedLocale();

  Future<void> saveSelectedLocale(Locale locale);
}
