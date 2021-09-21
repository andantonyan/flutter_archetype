import 'package:flutter/services.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_archetype/infrastructure/infrastructure.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'secure_storage_service_impl_test.mocks.dart';

@GenerateMocks([FlutterSecureStorage])
void main() {
  group('SecureStorageServiceImpl', () {
    late MockFlutterSecureStorage mockSecureStorage;
    late StorageService storageService;

    setUp(() {
      mockSecureStorage = MockFlutterSecureStorage();
      storageService = SecureStorageServiceImpl(mockSecureStorage);
    });

    group('init', () {
      test('try to read storage data', () async {
        when(mockSecureStorage.readAll()).thenAnswer((_) async => {});

        await storageService.init();

        verify(mockSecureStorage.readAll()).called(1);
        verifyNoMoreInteractions(mockSecureStorage);
      });

      test('wipe storage data on [PlatformException]', () async {
        when(mockSecureStorage.readAll()).thenThrow(PlatformException(code: 'code'));
        when(mockSecureStorage.deleteAll());

        await storageService.init();

        verify(mockSecureStorage.readAll()).called(1);
        verify(mockSecureStorage.deleteAll()).called(1);
        verifyNoMoreInteractions(mockSecureStorage);
      });
    });

    group('saveAuthToken', () {
      test('save token in db', () async {
        await storageService.saveAuthToken('token');

        verify(mockSecureStorage.write(key: anyNamed('key'), value: anyNamed('value'))).called(1);
        verifyNoMoreInteractions(mockSecureStorage);
      });
    });

    group('deleteAuthToken', () {
      test('delete token from db', () async {
        await storageService.deleteAuthToken();

        verify(mockSecureStorage.delete(key: anyNamed('key'))).called(1);
        verifyNoMoreInteractions(mockSecureStorage);
      });
    });
  });
}
