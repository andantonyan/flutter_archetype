import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_archetype/domain/domain.dart';

extension AppExceptionMapper on Exception {
  Exception get toApp {
    var appException = AppException(toString());

    if (this is DioError) {
      var self = this as DioError;
      switch (self.response?.statusCode) {
        case HttpStatus.notFound:
          appException = AppException.resourceNotFound(self.message);
          break;

        case HttpStatus.forbidden:
          appException = AppException.resourceForbidden(self.message);
          break;

        default:
      }
    } else if (this is firebase_auth.FirebaseAuthException) {
      var self = this as firebase_auth.FirebaseAuthException;
      switch (self.code) {
        case 'email-already-in-use':
          appException = AppException.authEmailAlreadyInUse(self.message);
          break;

        case 'user-not-found':
          appException = AppException.authUserNotFound(self.message);
          break;

        default:
      }
    }

    return appException;
  }
}
