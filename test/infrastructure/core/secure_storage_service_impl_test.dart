import 'package:flutter/services.dart';
import 'package:flutter_archetype/infrastructure/infrastructure.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'secure_storage_service_impl_test.mocks.dart';

@GenerateMocks([FlutterSecureStorage])
void main() {
  group('SecureStorageServiceImpl', () {
    late MockFlutterSecureStorage secureStorage;
    late SecureStorageServiceImpl storageService;

    setUp(() {
      secureStorage = MockFlutterSecureStorage();
      storageService = SecureStorageServiceImpl(secureStorage);
    });

    group('init', () {
      test('try to read storage data', () async {
        when(secureStorage.readAll()).thenAnswer((_) async => {});

        await storageService.init();

        verify(secureStorage.readAll()).called(1);
        verifyNoMoreInteractions(secureStorage);
      });

      test('wipe storage data on [PlatformException]', () async {
        when(secureStorage.readAll()).thenThrow(PlatformException(code: 'code'));

        await storageService.init();

        verify(secureStorage.readAll()).called(1);
        verify(secureStorage.deleteAll()).called(1);
        verifyNoMoreInteractions(secureStorage);
      });
    });

    group('saveAuthToken', () {
      test('save token in db', () async {
        await storageService.saveAuthToken('token');

        verify(secureStorage.write(key: anyNamed('key'), value: anyNamed('value'))).called(1);
        verifyNoMoreInteractions(secureStorage);
      });
    });

    group('deleteAuthToken', () {
      test('delete token from db', () async {
        await storageService.deleteAuthToken();

        verify(secureStorage.delete(key: anyNamed('key'))).called(1);
        verifyNoMoreInteractions(secureStorage);
      });
    });
  });
}
