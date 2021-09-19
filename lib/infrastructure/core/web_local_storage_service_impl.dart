import 'dart:ui';

import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';

import 'di.env.dart';

@web
@LazySingleton(as: StorageService)
class WebLocalStorageServiceImpl implements StorageService {
  static const _defaultLocale = Locale('en');

  String? _token;
  Locale? _locale;

  @override
  Future<void> deleteAuthToken() async {
    _token = null;
  }

  @override
  Future<String?> getAuthToken() async {
    return _token;
  }

  @override
  Future<Locale> getSelectedLocale() async {
    return _locale ?? _defaultLocale;
  }

  @override
  Future<void> init() async {
  }

  @override
  Future<void> saveAuthToken(String token) async {
    _token = token;
  }

  @override
  Future<void> saveSelectedLocale(Locale locale) async {
    _locale = locale;
  }
}
