import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../core/core.dart';

@Singleton(as: AuthRepository)
class FirebaseAuthRepository implements AuthRepository {
  static final _logger = Logger('FirebaseAuthRepository');

  final _firebaseAuth = firebase_auth.FirebaseAuth.instance;

  @override
  Stream<UserRecord?> get user {
    return _firebaseAuth.userChanges().map((firebaseUser) => firebaseUser == null ? null : firebaseUser.toUser);
  }

  @override
  Future<String> getToken([bool? forceRefresh = false]) async {
    try {
      _logger.finer('Getting auth token...');
      var token = await _firebaseAuth.currentUser!.getIdToken(forceRefresh!);
      _logger.fine('Done getting auth token.');

      return token;
    } catch (err, trace) {
      _logger.severe('Unable to get auth token', err, trace);
      rethrow;
    }
  }

  @override
  Future<UserRecord> registerWithEmailAndPassword(
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
  Future<UserRecord> loginWithEmailAndPassword(final String email, final String password) async {
    try {
      _logger.finer('Login user with email and password...');
      var response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _logger.fine('Done login user with email and password.');
      return response.user!.toUser;
    } catch (err, trace) {
      _logger.severe('Unable to login user with email and password', err, trace);
      rethrow;
    }
  }

  @override
  Future<void> reload() async {
    try {
      _logger.finer('Reloading user...');
      await _firebaseAuth.currentUser!.reload();
      _logger.fine('Done reloading user.');
    } catch (err, trace) {
      _logger.severe('Unable to reload user', err, trace);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      _logger.finer('Logout user...');
      await _firebaseAuth.signOut();
      _logger.fine('Done logout user.');
    } catch (err, trace) {
      _logger.severe('Unable to logout user', err, trace);
      rethrow;
    }
  }
}

extension on firebase_auth.User {
  UserRecord get toUser {
    return UserRecord(
      uid: uid,
      email: email!,
      emailVerified: emailVerified,
    );
  }
}
