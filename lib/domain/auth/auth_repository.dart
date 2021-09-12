import 'user_record.dart';

abstract class AuthRepository {
  Stream<UserRecord?> get user;

  Future<String> getToken([bool? forceRefresh]);

  Future<UserRecord> loginWithEmailAndPassword(String email, String password);

  Future<UserRecord> registerWithEmailAndPassword(
    String email,
    String password,
  );

  Future<void> reload();

  Future<void> logout();
}
