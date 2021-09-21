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
    late AuthRepository authRepository;
    late StorageService storageService;
    late User user;

    setUp(() {
      user = const User(
        uuid: 'test_uid',
        email: 'test_email',
        emailVerified: true,
      );
      authRepository = MockAuthRepository();
      storageService = MockStorageService();

      when(authRepository.user).thenAnswer((_) => const Stream.empty());
      authCubit = AuthCubit(authRepository, storageService);
    });

    tearDown(() {
      authCubit.close();
    });

    test('initial state is correct', () {
      expect(authCubit.state, const AuthState.initial());
    });
  });
}
