import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_archetype/l10n/l10n.dart';

import 'di.env.dart';

@mobile
@LazySingleton(as: StorageService)
class SecureStorageServiceImpl implements StorageService {
  static const _storage = const FlutterSecureStorage();
  static const _defaultLocale = const Locale('en');
  static const _introScreenStorageKey = 'is_intro_screen_disabled';
  static const _authTokenStorageKey = 'auth_token';
  static const _selectedLocaleStorageKey = 'selected_locale';
  static final _logger = Logger('SecureStorageServiceImpl');

  String? _authToken;

  @override
  Future<void> init() async {
    // FIXME: workaround for https://github.com/mogol/flutter_secure_storage/issues/206
    try {
      await _storage.readAll();
    } on PlatformException catch (err, trace) {
      _logger.severe('Unable to read data from flutter secure storage', err, trace);
      await _storage.deleteAll();
    }
  }

  @override
  Future<bool> canShowIntroScreen() async {
    var value = await _storage.read(key: _introScreenStorageKey);
    return value != 'true';
  }

  @override
  Future<void> disableIntroScreen() {
    return _storage.write(key: _introScreenStorageKey, value: 'true');
  }

  @override
  Future<void> saveAuthToken(final String token) {
    _authToken = token;
    return _storage.write(key: _authTokenStorageKey, value: token);
  }

  @override
  Future<void> deleteAuthToken() {
    _authToken = null;
    return _storage.delete(key: _authTokenStorageKey);
  }

  @override
  Future<String?> getAuthToken() async {
    _authToken ??= await _storage.read(key: _authTokenStorageKey);
    return _authToken;
  }

  @override
  Future<Locale> getSelectedLocale() async {
    var languageCode = await _storage.read(key: _selectedLocaleStorageKey);
    var selectedLocale = _defaultLocale;

    if (languageCode != null) {
      var locale = Locale(languageCode);

      if (AppLocalizations.supportedLocales.contains(locale)) {
        selectedLocale = locale;
      }
    }

    return selectedLocale;
  }

  @override
  Future<void> saveSelectedLocale(final Locale locale) {
    return _storage.write(key: _selectedLocaleStorageKey, value: locale.languageCode);
  }
}
