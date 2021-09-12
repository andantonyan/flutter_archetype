// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppExceptionTearOff {
  const _$AppExceptionTearOff();

  _AppException call([Object? message]) {
    return _AppException(
      message,
    );
  }

  ResourceNotFoundException resourceNotFound([Object? message]) {
    return ResourceNotFoundException(
      message,
    );
  }

  ResourceForbiddenException resourceForbidden([Object? message]) {
    return ResourceForbiddenException(
      message,
    );
  }

  ResourcePreconditionFailedException resourcePreconditionFailed(
      [Object? message]) {
    return ResourcePreconditionFailedException(
      message,
    );
  }

  ResourceAlreadyExistsException resourceAlreadyExists([Object? message]) {
    return ResourceAlreadyExistsException(
      message,
    );
  }

  RegisterEmailAlreadyInUseExcpetion registerEmailAlreadyInUse(
      [Object? message]) {
    return RegisterEmailAlreadyInUseExcpetion(
      message,
    );
  }

  UserEmailAlreadyVerifiedExcpetion userEmailAlreadyVerified(
      [Object? message]) {
    return UserEmailAlreadyVerifiedExcpetion(
      message,
    );
  }
}

/// @nodoc
const $AppException = _$AppExceptionTearOff();

/// @nodoc
mixin _$AppException {
  Object? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res>;
  $Res call({Object? message});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res> implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  final AppException _value;
  // ignore: unused_field
  final $Res Function(AppException) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc
abstract class _$AppExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$AppExceptionCopyWith(
          _AppException value, $Res Function(_AppException) then) =
      __$AppExceptionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class __$AppExceptionCopyWithImpl<$Res> extends _$AppExceptionCopyWithImpl<$Res>
    implements _$AppExceptionCopyWith<$Res> {
  __$AppExceptionCopyWithImpl(
      _AppException _value, $Res Function(_AppException) _then)
      : super(_value, (v) => _then(v as _AppException));

  @override
  _AppException get _value => super._value as _AppException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_AppException(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$_AppException implements _AppException {
  const _$_AppException([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AppExceptionCopyWith<_AppException> get copyWith =>
      __$AppExceptionCopyWithImpl<_AppException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AppException implements AppException {
  const factory _AppException([Object? message]) = _$_AppException;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppExceptionCopyWith<_AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceNotFoundExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $ResourceNotFoundExceptionCopyWith(ResourceNotFoundException value,
          $Res Function(ResourceNotFoundException) then) =
      _$ResourceNotFoundExceptionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$ResourceNotFoundExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $ResourceNotFoundExceptionCopyWith<$Res> {
  _$ResourceNotFoundExceptionCopyWithImpl(ResourceNotFoundException _value,
      $Res Function(ResourceNotFoundException) _then)
      : super(_value, (v) => _then(v as ResourceNotFoundException));

  @override
  ResourceNotFoundException get _value =>
      super._value as ResourceNotFoundException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ResourceNotFoundException(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$ResourceNotFoundException implements ResourceNotFoundException {
  const _$ResourceNotFoundException([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.resourceNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourceNotFoundException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ResourceNotFoundExceptionCopyWith<ResourceNotFoundException> get copyWith =>
      _$ResourceNotFoundExceptionCopyWithImpl<ResourceNotFoundException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return resourceNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return resourceNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return resourceNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return resourceNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(this);
    }
    return orElse();
  }
}

abstract class ResourceNotFoundException implements AppException {
  const factory ResourceNotFoundException([Object? message]) =
      _$ResourceNotFoundException;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResourceNotFoundExceptionCopyWith<ResourceNotFoundException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceForbiddenExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $ResourceForbiddenExceptionCopyWith(ResourceForbiddenException value,
          $Res Function(ResourceForbiddenException) then) =
      _$ResourceForbiddenExceptionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$ResourceForbiddenExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $ResourceForbiddenExceptionCopyWith<$Res> {
  _$ResourceForbiddenExceptionCopyWithImpl(ResourceForbiddenException _value,
      $Res Function(ResourceForbiddenException) _then)
      : super(_value, (v) => _then(v as ResourceForbiddenException));

  @override
  ResourceForbiddenException get _value =>
      super._value as ResourceForbiddenException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ResourceForbiddenException(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$ResourceForbiddenException implements ResourceForbiddenException {
  const _$ResourceForbiddenException([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.resourceForbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourceForbiddenException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ResourceForbiddenExceptionCopyWith<ResourceForbiddenException>
      get copyWith =>
          _$ResourceForbiddenExceptionCopyWithImpl<ResourceForbiddenException>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return resourceForbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return resourceForbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourceForbidden != null) {
      return resourceForbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return resourceForbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return resourceForbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourceForbidden != null) {
      return resourceForbidden(this);
    }
    return orElse();
  }
}

abstract class ResourceForbiddenException implements AppException {
  const factory ResourceForbiddenException([Object? message]) =
      _$ResourceForbiddenException;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResourceForbiddenExceptionCopyWith<ResourceForbiddenException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcePreconditionFailedExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $ResourcePreconditionFailedExceptionCopyWith(
          ResourcePreconditionFailedException value,
          $Res Function(ResourcePreconditionFailedException) then) =
      _$ResourcePreconditionFailedExceptionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$ResourcePreconditionFailedExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $ResourcePreconditionFailedExceptionCopyWith<$Res> {
  _$ResourcePreconditionFailedExceptionCopyWithImpl(
      ResourcePreconditionFailedException _value,
      $Res Function(ResourcePreconditionFailedException) _then)
      : super(_value, (v) => _then(v as ResourcePreconditionFailedException));

  @override
  ResourcePreconditionFailedException get _value =>
      super._value as ResourcePreconditionFailedException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ResourcePreconditionFailedException(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$ResourcePreconditionFailedException
    implements ResourcePreconditionFailedException {
  const _$ResourcePreconditionFailedException([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.resourcePreconditionFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourcePreconditionFailedException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ResourcePreconditionFailedExceptionCopyWith<
          ResourcePreconditionFailedException>
      get copyWith => _$ResourcePreconditionFailedExceptionCopyWithImpl<
          ResourcePreconditionFailedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return resourcePreconditionFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return resourcePreconditionFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourcePreconditionFailed != null) {
      return resourcePreconditionFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return resourcePreconditionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return resourcePreconditionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourcePreconditionFailed != null) {
      return resourcePreconditionFailed(this);
    }
    return orElse();
  }
}

abstract class ResourcePreconditionFailedException implements AppException {
  const factory ResourcePreconditionFailedException([Object? message]) =
      _$ResourcePreconditionFailedException;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResourcePreconditionFailedExceptionCopyWith<
          ResourcePreconditionFailedException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceAlreadyExistsExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $ResourceAlreadyExistsExceptionCopyWith(
          ResourceAlreadyExistsException value,
          $Res Function(ResourceAlreadyExistsException) then) =
      _$ResourceAlreadyExistsExceptionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$ResourceAlreadyExistsExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $ResourceAlreadyExistsExceptionCopyWith<$Res> {
  _$ResourceAlreadyExistsExceptionCopyWithImpl(
      ResourceAlreadyExistsException _value,
      $Res Function(ResourceAlreadyExistsException) _then)
      : super(_value, (v) => _then(v as ResourceAlreadyExistsException));

  @override
  ResourceAlreadyExistsException get _value =>
      super._value as ResourceAlreadyExistsException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ResourceAlreadyExistsException(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$ResourceAlreadyExistsException
    implements ResourceAlreadyExistsException {
  const _$ResourceAlreadyExistsException([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.resourceAlreadyExists(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourceAlreadyExistsException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ResourceAlreadyExistsExceptionCopyWith<ResourceAlreadyExistsException>
      get copyWith => _$ResourceAlreadyExistsExceptionCopyWithImpl<
          ResourceAlreadyExistsException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return resourceAlreadyExists(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return resourceAlreadyExists?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourceAlreadyExists != null) {
      return resourceAlreadyExists(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return resourceAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return resourceAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (resourceAlreadyExists != null) {
      return resourceAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class ResourceAlreadyExistsException implements AppException {
  const factory ResourceAlreadyExistsException([Object? message]) =
      _$ResourceAlreadyExistsException;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResourceAlreadyExistsExceptionCopyWith<ResourceAlreadyExistsException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEmailAlreadyInUseExcpetionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $RegisterEmailAlreadyInUseExcpetionCopyWith(
          RegisterEmailAlreadyInUseExcpetion value,
          $Res Function(RegisterEmailAlreadyInUseExcpetion) then) =
      _$RegisterEmailAlreadyInUseExcpetionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$RegisterEmailAlreadyInUseExcpetionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $RegisterEmailAlreadyInUseExcpetionCopyWith<$Res> {
  _$RegisterEmailAlreadyInUseExcpetionCopyWithImpl(
      RegisterEmailAlreadyInUseExcpetion _value,
      $Res Function(RegisterEmailAlreadyInUseExcpetion) _then)
      : super(_value, (v) => _then(v as RegisterEmailAlreadyInUseExcpetion));

  @override
  RegisterEmailAlreadyInUseExcpetion get _value =>
      super._value as RegisterEmailAlreadyInUseExcpetion;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(RegisterEmailAlreadyInUseExcpetion(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$RegisterEmailAlreadyInUseExcpetion
    implements RegisterEmailAlreadyInUseExcpetion {
  const _$RegisterEmailAlreadyInUseExcpetion([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.registerEmailAlreadyInUse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEmailAlreadyInUseExcpetion &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $RegisterEmailAlreadyInUseExcpetionCopyWith<
          RegisterEmailAlreadyInUseExcpetion>
      get copyWith => _$RegisterEmailAlreadyInUseExcpetionCopyWithImpl<
          RegisterEmailAlreadyInUseExcpetion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return registerEmailAlreadyInUse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return registerEmailAlreadyInUse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (registerEmailAlreadyInUse != null) {
      return registerEmailAlreadyInUse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return registerEmailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return registerEmailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (registerEmailAlreadyInUse != null) {
      return registerEmailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class RegisterEmailAlreadyInUseExcpetion implements AppException {
  const factory RegisterEmailAlreadyInUseExcpetion([Object? message]) =
      _$RegisterEmailAlreadyInUseExcpetion;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RegisterEmailAlreadyInUseExcpetionCopyWith<
          RegisterEmailAlreadyInUseExcpetion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEmailAlreadyVerifiedExcpetionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $UserEmailAlreadyVerifiedExcpetionCopyWith(
          UserEmailAlreadyVerifiedExcpetion value,
          $Res Function(UserEmailAlreadyVerifiedExcpetion) then) =
      _$UserEmailAlreadyVerifiedExcpetionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$UserEmailAlreadyVerifiedExcpetionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $UserEmailAlreadyVerifiedExcpetionCopyWith<$Res> {
  _$UserEmailAlreadyVerifiedExcpetionCopyWithImpl(
      UserEmailAlreadyVerifiedExcpetion _value,
      $Res Function(UserEmailAlreadyVerifiedExcpetion) _then)
      : super(_value, (v) => _then(v as UserEmailAlreadyVerifiedExcpetion));

  @override
  UserEmailAlreadyVerifiedExcpetion get _value =>
      super._value as UserEmailAlreadyVerifiedExcpetion;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UserEmailAlreadyVerifiedExcpetion(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$UserEmailAlreadyVerifiedExcpetion
    implements UserEmailAlreadyVerifiedExcpetion {
  const _$UserEmailAlreadyVerifiedExcpetion([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.userEmailAlreadyVerified(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEmailAlreadyVerifiedExcpetion &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UserEmailAlreadyVerifiedExcpetionCopyWith<UserEmailAlreadyVerifiedExcpetion>
      get copyWith => _$UserEmailAlreadyVerifiedExcpetionCopyWithImpl<
          UserEmailAlreadyVerifiedExcpetion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) registerEmailAlreadyInUse,
    required TResult Function(Object? message) userEmailAlreadyVerified,
  }) {
    return userEmailAlreadyVerified(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
  }) {
    return userEmailAlreadyVerified?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? registerEmailAlreadyInUse,
    TResult Function(Object? message)? userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (userEmailAlreadyVerified != null) {
      return userEmailAlreadyVerified(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(ResourceNotFoundException value) resourceNotFound,
    required TResult Function(ResourceForbiddenException value)
        resourceForbidden,
    required TResult Function(ResourcePreconditionFailedException value)
        resourcePreconditionFailed,
    required TResult Function(ResourceAlreadyExistsException value)
        resourceAlreadyExists,
    required TResult Function(RegisterEmailAlreadyInUseExcpetion value)
        registerEmailAlreadyInUse,
    required TResult Function(UserEmailAlreadyVerifiedExcpetion value)
        userEmailAlreadyVerified,
  }) {
    return userEmailAlreadyVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
  }) {
    return userEmailAlreadyVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(ResourceNotFoundException value)? resourceNotFound,
    TResult Function(ResourceForbiddenException value)? resourceForbidden,
    TResult Function(ResourcePreconditionFailedException value)?
        resourcePreconditionFailed,
    TResult Function(ResourceAlreadyExistsException value)?
        resourceAlreadyExists,
    TResult Function(RegisterEmailAlreadyInUseExcpetion value)?
        registerEmailAlreadyInUse,
    TResult Function(UserEmailAlreadyVerifiedExcpetion value)?
        userEmailAlreadyVerified,
    required TResult orElse(),
  }) {
    if (userEmailAlreadyVerified != null) {
      return userEmailAlreadyVerified(this);
    }
    return orElse();
  }
}

abstract class UserEmailAlreadyVerifiedExcpetion implements AppException {
  const factory UserEmailAlreadyVerifiedExcpetion([Object? message]) =
      _$UserEmailAlreadyVerifiedExcpetion;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserEmailAlreadyVerifiedExcpetionCopyWith<UserEmailAlreadyVerifiedExcpetion>
      get copyWith => throw _privateConstructorUsedError;
}
