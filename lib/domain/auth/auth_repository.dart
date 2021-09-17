import 'user.dart';

abstract class AuthRepository {
  Stream<User?> get user;

  Future<String> getToken([bool forceRefresh]);

  Future<User> loginWithEmailAndPassword(String email, String password);

  Future<User> registerWithEmailAndPassword(
    String email,
    String password,
  );

  Future<void> reload();

  Future<void> logout();
}
