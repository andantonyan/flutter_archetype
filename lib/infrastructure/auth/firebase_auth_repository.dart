import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../core/core.dart';

@Singleton(as: AuthRepository)
class FirebaseAuthRepository implements AuthRepository {
  static final _logger = Logger('FirebaseAuthRepository');

  final firebase_auth.FirebaseAuth _firebaseAuth;

  const FirebaseAuthRepository(this._firebaseAuth);

  @override
  Stream<User?> get user {
    return _firebaseAuth.userChanges().map((firebaseUser) => firebaseUser?.toUser);
  }

  @override
  Future<String> getToken([bool forceRefresh = false]) async {
    try {
      _logger.finer('Getting auth token...');
      var token = await _firebaseAuth.currentUser!.getIdToken(forceRefresh);
      _logger.fine('Done getting auth token.');

      return token;
    } on Exception catch (err, trace) {
      _logger.severe('Unable to get auth token', err, trace);
      throw err.toApp;
    }
  }

  @override
  Future<User> registerWithEmailAndPassword(
    final String email,
    final String password,
  ) async {
    try {
      _logger.finer('Register user with email and password...');
      var response = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _logger.fine('Done register user with email and password.');

      return response.user!.toUser;
    } on Exception catch (err, trace) {
      _logger.severe('Unable to register user with email and password', err, trace);
      throw err.toApp;
    }
  }

  @override
  Future<User> loginWithEmailAndPassword(final String email, final String password) async {
    try {
      _logger.finer('Login user with email and password...');
      var response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _logger.fine('Done login user with email and password.');
      return response.user!.toUser;
    } on Exception catch (err, trace) {
      _logger.severe('Unable to login user with email and password', err, trace);
      throw err.toApp;
    }
  }

  @override
  Future<void> reload() async {
    try {
      _logger.finer('Reloading user...');
      await _firebaseAuth.currentUser!.reload();
      _logger.fine('Done reloading user.');
    } on Exception catch (err, trace) {
      _logger.severe('Unable to reload user', err, trace);
      throw err.toApp;
    }
  }

  @override
  Future<void> logout() async {
    try {
      _logger.finer('Logout user...');
      await _firebaseAuth.signOut();
      _logger.fine('Done logout user.');
    } on Exception catch (err, trace) {
      _logger.severe('Unable to logout user', err, trace);
      throw err.toApp;
    }
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(
      uuid: uid,
      email: email!,
      emailVerified: emailVerified,
    );
  }
}
