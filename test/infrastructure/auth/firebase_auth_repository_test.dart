import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_archetype/infrastructure/infrastructure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'firebase_auth_repository_test.mocks.dart';

@GenerateMocks([firebase_auth.FirebaseAuth, firebase_auth.User])
void main() {
  group('FirebaseAuthRepository', () {
    late MockFirebaseAuth mockFirebaseAuth;
    late MockUser mockUser;
    late FirebaseAuthRepository authRepository;

    setUp(() {
      mockFirebaseAuth = MockFirebaseAuth();
      mockUser = MockUser();

      when(mockFirebaseAuth.currentUser).thenAnswer((_) => mockUser);

      authRepository = FirebaseAuthRepository(firebaseAuth: mockFirebaseAuth);
    });

    group('getToken', () {
      test('return token if call completes successfully', () async {
        when(mockUser.getIdToken()).thenAnswer((_) async => 'token');

        var token = await authRepository.getToken();

        expect(token, 'token');
      });

      test('throws an exception if call completes with an error', () async {
        var throwable = firebase_auth.FirebaseAuthException(code: 'error');
        when(mockUser.getIdToken()).thenThrow(throwable);

        expect(() async => await authRepository.getToken(), throwsA(isA<AppException>()));
      });
    });
  });
}
