import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_archetype/infrastructure/infrastructure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'firebase_auth_repository_test.mocks.dart';

@GenerateMocks([firebase_auth.FirebaseAuth, firebase_auth.User, firebase_auth.UserCredential])
void main() {
  group('FirebaseAuthRepository', () {
    late MockFirebaseAuth mockFirebaseAuth;
    late FirebaseAuthRepository authRepository;

    setUp(() {
      mockFirebaseAuth = MockFirebaseAuth();
      authRepository = FirebaseAuthRepository(mockFirebaseAuth);
    });

    group('user', () {
      late MockUser mockUser;

      setUp(() {
        mockUser = MockUser();

        when(mockFirebaseAuth.currentUser).thenAnswer((_) => mockUser);
      });

      test('return user stream and convert UserRecord to User', () async {
        when(mockUser.uid).thenAnswer((_) => 'test_uid');
        when(mockUser.email).thenAnswer((_) => 'test_email');
        when(mockUser.emailVerified).thenAnswer((_) => true);

        when(mockFirebaseAuth.userChanges()).thenAnswer((_) => Stream.fromIterable([mockUser, null]));

        var user = authRepository.user;

        expect(
          user,
          emitsInOrder([
            const User(uuid: 'test_uid', email: 'test_email', emailVerified: true),
            null,
          ]),
        );
      });
    });

    group('getToken', () {
      late MockUser mockUser;

      setUp(() {
        mockUser = MockUser();

        when(mockFirebaseAuth.currentUser).thenAnswer((_) => mockUser);
      });

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

    group('registerWithEmailAndPassword', () {
      late MockUserCredential mockUserCredential;
      late MockUser mockUser;

      setUp(() {
        mockUser = MockUser();
        mockUserCredential = MockUserCredential();
      });

      test('register user with email and password, and return User', () async {
        when(mockUser.uid).thenAnswer((_) => 'test_uid');
        when(mockUser.email).thenAnswer((_) => 'test_email');
        when(mockUser.emailVerified).thenAnswer((_) => true);

        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockFirebaseAuth.createUserWithEmailAndPassword(email: 'test_email', password: 'test_password'))
            .thenAnswer(
          (_) async => mockUserCredential,
        );

        var user = await authRepository.registerWithEmailAndPassword('test_email', 'test_password');

        expect(user, const User(uuid: 'test_uid', email: 'test_email', emailVerified: true));
      });

      test('throws an exception if call completes with an error', () async {
        var throwable = firebase_auth.FirebaseAuthException(code: 'error');
        when(mockFirebaseAuth.createUserWithEmailAndPassword(email: 'test_email', password: 'test_password')).thenThrow(
          throwable,
        );

        expect(
          () async => await authRepository.registerWithEmailAndPassword('test_email', 'test_password'),
          throwsA(isA<AppException>()),
        );
      });

      test('throws an `AppException.authEmailAlreadyInUse` when error code `email-already-in-use`', () async {
        var throwable = firebase_auth.FirebaseAuthException(code: 'email-already-in-use');
        when(mockFirebaseAuth.createUserWithEmailAndPassword(email: 'test_email', password: 'test_password')).thenThrow(
          throwable,
        );

        expect(
          () async => await authRepository.registerWithEmailAndPassword('test_email', 'test_password'),
          throwsA(isA<AuthEmailAlreadyInUseExcpetion>()),
        );
      });
    });

    group('loginWithEmailAndPassword', () {
      late MockUserCredential mockUserCredential;
      late MockUser mockUser;

      setUp(() {
        mockUser = MockUser();
        mockUserCredential = MockUserCredential();
      });

      test('login user with email and password', () async {
        when(mockUser.uid).thenAnswer((_) => 'test_uid');
        when(mockUser.email).thenAnswer((_) => 'test_email');
        when(mockUser.emailVerified).thenAnswer((_) => true);

        when(mockUserCredential.user).thenAnswer((_) => mockUser);
        when(mockFirebaseAuth.signInWithEmailAndPassword(email: 'test_email', password: 'test_password')).thenAnswer(
          (_) async => mockUserCredential,
        );

        var user = await authRepository.loginWithEmailAndPassword('test_email', 'test_password');

        expect(user, const User(uuid: 'test_uid', email: 'test_email', emailVerified: true));
      });

      test('throws an exception if call completes with an error', () async {
        var throwable = firebase_auth.FirebaseAuthException(code: 'error');
        when(mockFirebaseAuth.signInWithEmailAndPassword(email: 'test_email', password: 'test_password')).thenThrow(
          throwable,
        );

        expect(
          () async => await authRepository.loginWithEmailAndPassword('test_email', 'test_password'),
          throwsA(isA<AppException>()),
        );
      });

      test('throws an `AppException.authUserNotFound` when error code `user-not-found`', () async {
        var throwable = firebase_auth.FirebaseAuthException(code: 'user-not-found');
        when(mockFirebaseAuth.signInWithEmailAndPassword(email: 'test_email', password: 'test_password')).thenThrow(
          throwable,
        );

        expect(
          () async => await authRepository.loginWithEmailAndPassword('test_email', 'test_password'),
          throwsA(isA<AuthUserNotFoundException>()),
        );
      });
    });
  });
}
