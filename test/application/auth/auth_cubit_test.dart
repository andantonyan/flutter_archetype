import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_archetype/application/application.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_cubit_test.mocks.dart';

@GenerateMocks([AuthRepository, StorageService])
void main() {
  group('AuthCubit', () {
    late AuthCubit authCubit;
    late MockAuthRepository authRepository;
    late MockStorageService storageService;
    late User user;
    late StreamController<User?> userStreamController;

    setUp(() {
      user = const User(
        uuid: 'test_uid',
        email: 'test_email',
        emailVerified: true,
      );
      userStreamController = StreamController<User?>();
      authRepository = MockAuthRepository();
      storageService = MockStorageService();

      when(authRepository.user).thenAnswer((_) => userStreamController.stream);
      authCubit = AuthCubit(authRepository, storageService);
    });

    tearDown(() {
      authCubit.close();
      userStreamController.close();
    });

    test('initial state is correct', () {
      expect(authCubit.state, const AuthState.initial());
    });

    group('userChanged', () {
      blocTest<AuthCubit, AuthState>(
        'emits [Unauthenticated] when user is null',
        build: () => authCubit,
        act: (cubit) => userStreamController.add(null),
        expect: () => [const AuthState.unauthenticated()],
        verify: (bloc) {
          verify(storageService.deleteAuthToken()).called(1);
        },
      );

      blocTest<AuthCubit, AuthState>(
        'emits [Loading, Authenticated] when user is not null',
        build: () {
          when(authRepository.getToken()).thenAnswer((_) => Future.value('auth_token'));
          return authCubit;
        },
        act: (cubit) => userStreamController.add(user),
        expect: () => [
          const AuthState.loading(),
          AuthState.authenticated(user: user),
        ],
        verify: (bloc) {
          verify(authRepository.getToken()).called(1);
          verify(storageService.saveAuthToken('auth_token')).called(1);
        },
      );

      blocTest<AuthCubit, AuthState>(
        'emits [Loading, Unauthenticated] when getToken() throws',
        build: () {
          when(authRepository.getToken()).thenThrow(Exception());
          return authCubit;
        },
        seed: () => AuthState.authenticated(user: user),
        act: (cubit) => userStreamController.add(user),
        expect: () => [
          const AuthState.loading(),
          const AuthState.unauthenticated(),
        ],
        verify: (bloc) {
          verify(authRepository.getToken()).called(1);
          verify(authRepository.logout()).called(1);
          verify(storageService.deleteAuthToken()).called(1);
          verifyNever(storageService.saveAuthToken(any));
        },
      );
    });
  });
}
