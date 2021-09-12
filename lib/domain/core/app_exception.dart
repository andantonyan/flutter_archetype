import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  const factory AppException([Object? message]) = _AppException;

  const factory AppException.resourceNotFound([Object? message]) = ResourceNotFoundException;

  const factory AppException.resourceForbidden([Object? message]) = ResourceForbiddenException;

  const factory AppException.resourcePreconditionFailed([Object? message]) = ResourcePreconditionFailedException;

  const factory AppException.resourceAlreadyExists([Object? message]) = ResourceAlreadyExistsException;

  const factory AppException.registerEmailAlreadyInUse([Object? message]) = RegisterEmailAlreadyInUseExcpetion;

  const factory AppException.userEmailAlreadyVerified([Object? message]) = UserEmailAlreadyVerifiedExcpetion;
}
