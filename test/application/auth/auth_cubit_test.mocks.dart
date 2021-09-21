// Mocks generated by Mockito 5.0.16 from annotations
// in flutter_archetype/test/application/auth/auth_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:ui' as _i3;

import 'package:flutter_archetype/domain/auth/auth_repository.dart' as _i4;
import 'package:flutter_archetype/domain/auth/user.dart' as _i2;
import 'package:flutter_archetype/domain/core/storage_service.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeUser_0 extends _i1.Fake implements _i2.User {}

class _FakeLocale_1 extends _i1.Fake implements _i3.Locale {}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i4.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Stream<_i2.User?> get user =>
      (super.noSuchMethod(Invocation.getter(#user),
          returnValue: Stream<_i2.User?>.empty()) as _i5.Stream<_i2.User?>);
  @override
  _i5.Future<String> getToken([bool? forceRefresh]) =>
      (super.noSuchMethod(Invocation.method(#getToken, [forceRefresh]),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<_i2.User> loginWithEmailAndPassword(
          String? email, String? password) =>
      (super.noSuchMethod(
              Invocation.method(#loginWithEmailAndPassword, [email, password]),
              returnValue: Future<_i2.User>.value(_FakeUser_0()))
          as _i5.Future<_i2.User>);
  @override
  _i5.Future<_i2.User> registerWithEmailAndPassword(
          String? email, String? password) =>
      (super.noSuchMethod(
          Invocation.method(#registerWithEmailAndPassword, [email, password]),
          returnValue:
              Future<_i2.User>.value(_FakeUser_0())) as _i5.Future<_i2.User>);
  @override
  _i5.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> logout() =>
      (super.noSuchMethod(Invocation.method(#logout, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [StorageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageService extends _i1.Mock implements _i6.StorageService {
  MockStorageService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> init() => (super.noSuchMethod(Invocation.method(#init, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<String?> getAuthToken() =>
      (super.noSuchMethod(Invocation.method(#getAuthToken, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<void> saveAuthToken(String? token) =>
      (super.noSuchMethod(Invocation.method(#saveAuthToken, [token]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> deleteAuthToken() =>
      (super.noSuchMethod(Invocation.method(#deleteAuthToken, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<_i3.Locale> getSelectedLocale() =>
      (super.noSuchMethod(Invocation.method(#getSelectedLocale, []),
              returnValue: Future<_i3.Locale>.value(_FakeLocale_1()))
          as _i5.Future<_i3.Locale>);
  @override
  _i5.Future<void> saveSelectedLocale(_i3.Locale? locale) =>
      (super.noSuchMethod(Invocation.method(#saveSelectedLocale, [locale]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}