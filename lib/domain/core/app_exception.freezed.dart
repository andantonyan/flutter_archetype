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

  AuthUserNotFoundException authUserNotFound([Object? message]) {
    return AuthUserNotFoundException(
      message,
    );
  }

  AuthEmailAlreadyInUseExcpetion authEmailAlreadyInUse([Object? message]) {
    return AuthEmailAlreadyInUseExcpetion(
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
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
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
abstract class $AuthUserNotFoundExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $AuthUserNotFoundExceptionCopyWith(AuthUserNotFoundException value,
          $Res Function(AuthUserNotFoundException) then) =
      _$AuthUserNotFoundExceptionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$AuthUserNotFoundExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $AuthUserNotFoundExceptionCopyWith<$Res> {
  _$AuthUserNotFoundExceptionCopyWithImpl(AuthUserNotFoundException _value,
      $Res Function(AuthUserNotFoundException) _then)
      : super(_value, (v) => _then(v as AuthUserNotFoundException));

  @override
  AuthUserNotFoundException get _value =>
      super._value as AuthUserNotFoundException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthUserNotFoundException(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$AuthUserNotFoundException implements AuthUserNotFoundException {
  const _$AuthUserNotFoundException([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.authUserNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthUserNotFoundException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $AuthUserNotFoundExceptionCopyWith<AuthUserNotFoundException> get copyWith =>
      _$AuthUserNotFoundExceptionCopyWithImpl<AuthUserNotFoundException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
  }) {
    return authUserNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
  }) {
    return authUserNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (authUserNotFound != null) {
      return authUserNotFound(message);
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
  }) {
    return authUserNotFound(this);
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
  }) {
    return authUserNotFound?.call(this);
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (authUserNotFound != null) {
      return authUserNotFound(this);
    }
    return orElse();
  }
}

abstract class AuthUserNotFoundException implements AppException {
  const factory AuthUserNotFoundException([Object? message]) =
      _$AuthUserNotFoundException;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AuthUserNotFoundExceptionCopyWith<AuthUserNotFoundException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailAlreadyInUseExcpetionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $AuthEmailAlreadyInUseExcpetionCopyWith(
          AuthEmailAlreadyInUseExcpetion value,
          $Res Function(AuthEmailAlreadyInUseExcpetion) then) =
      _$AuthEmailAlreadyInUseExcpetionCopyWithImpl<$Res>;
  @override
  $Res call({Object? message});
}

/// @nodoc
class _$AuthEmailAlreadyInUseExcpetionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements $AuthEmailAlreadyInUseExcpetionCopyWith<$Res> {
  _$AuthEmailAlreadyInUseExcpetionCopyWithImpl(
      AuthEmailAlreadyInUseExcpetion _value,
      $Res Function(AuthEmailAlreadyInUseExcpetion) _then)
      : super(_value, (v) => _then(v as AuthEmailAlreadyInUseExcpetion));

  @override
  AuthEmailAlreadyInUseExcpetion get _value =>
      super._value as AuthEmailAlreadyInUseExcpetion;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthEmailAlreadyInUseExcpetion(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$AuthEmailAlreadyInUseExcpetion
    implements AuthEmailAlreadyInUseExcpetion {
  const _$AuthEmailAlreadyInUseExcpetion([this.message]);

  @override
  final Object? message;

  @override
  String toString() {
    return 'AppException.authEmailAlreadyInUse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthEmailAlreadyInUseExcpetion &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $AuthEmailAlreadyInUseExcpetionCopyWith<AuthEmailAlreadyInUseExcpetion>
      get copyWith => _$AuthEmailAlreadyInUseExcpetionCopyWithImpl<
          AuthEmailAlreadyInUseExcpetion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Object? message) $default, {
    required TResult Function(Object? message) resourceNotFound,
    required TResult Function(Object? message) resourceForbidden,
    required TResult Function(Object? message) resourcePreconditionFailed,
    required TResult Function(Object? message) resourceAlreadyExists,
    required TResult Function(Object? message) authUserNotFound,
    required TResult Function(Object? message) authEmailAlreadyInUse,
  }) {
    return authEmailAlreadyInUse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
  }) {
    return authEmailAlreadyInUse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Object? message)? $default, {
    TResult Function(Object? message)? resourceNotFound,
    TResult Function(Object? message)? resourceForbidden,
    TResult Function(Object? message)? resourcePreconditionFailed,
    TResult Function(Object? message)? resourceAlreadyExists,
    TResult Function(Object? message)? authUserNotFound,
    TResult Function(Object? message)? authEmailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (authEmailAlreadyInUse != null) {
      return authEmailAlreadyInUse(message);
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
    required TResult Function(AuthUserNotFoundException value) authUserNotFound,
    required TResult Function(AuthEmailAlreadyInUseExcpetion value)
        authEmailAlreadyInUse,
  }) {
    return authEmailAlreadyInUse(this);
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
  }) {
    return authEmailAlreadyInUse?.call(this);
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
    TResult Function(AuthUserNotFoundException value)? authUserNotFound,
    TResult Function(AuthEmailAlreadyInUseExcpetion value)?
        authEmailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (authEmailAlreadyInUse != null) {
      return authEmailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class AuthEmailAlreadyInUseExcpetion implements AppException {
  const factory AuthEmailAlreadyInUseExcpetion([Object? message]) =
      _$AuthEmailAlreadyInUseExcpetion;

  @override
  Object? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AuthEmailAlreadyInUseExcpetionCopyWith<AuthEmailAlreadyInUseExcpetion>
      get copyWith => throw _privateConstructorUsedError;
}
