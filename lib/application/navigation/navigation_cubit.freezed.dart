// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Login login({String? email, bool readOnlyEmail = false}) {
    return _Login(
      email: email,
      readOnlyEmail: readOnlyEmail,
    );
  }

  _VerifyEmail verifyEmail({String? token, String? email}) {
    return _VerifyEmail(
      token: token,
      email: email,
    );
  }

  _Home home() {
    return const _Home();
  }
}

/// @nodoc
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? email, bool readOnlyEmail) login,
    required TResult Function(String? token, String? email) verifyEmail,
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_Home value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NavigationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? email, bool readOnlyEmail) login,
    required TResult Function(String? token, String? email) verifyEmail,
    required TResult Function() home,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_Home value) home,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NavigationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NavigationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? email, bool readOnlyEmail) login,
    required TResult Function(String? token, String? email) verifyEmail,
    required TResult Function() home,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_Home value) home,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NavigationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  $Res call({String? email, bool readOnlyEmail});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? email = freezed,
    Object? readOnlyEmail = freezed,
  }) {
    return _then(_Login(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      readOnlyEmail: readOnlyEmail == freezed
          ? _value.readOnlyEmail
          : readOnlyEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({this.email, this.readOnlyEmail = false});

  @override
  final String? email;
  @JsonKey(defaultValue: false)
  @override
  final bool readOnlyEmail;

  @override
  String toString() {
    return 'NavigationState.login(email: $email, readOnlyEmail: $readOnlyEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.readOnlyEmail, readOnlyEmail) ||
                const DeepCollectionEquality()
                    .equals(other.readOnlyEmail, readOnlyEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(readOnlyEmail);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? email, bool readOnlyEmail) login,
    required TResult Function(String? token, String? email) verifyEmail,
    required TResult Function() home,
  }) {
    return login(email, readOnlyEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
  }) {
    return login?.call(email, readOnlyEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, readOnlyEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_Home value) home,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements NavigationState {
  const factory _Login({String? email, bool readOnlyEmail}) = _$_Login;

  String? get email => throw _privateConstructorUsedError;
  bool get readOnlyEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyEmailCopyWith<$Res> {
  factory _$VerifyEmailCopyWith(
          _VerifyEmail value, $Res Function(_VerifyEmail) then) =
      __$VerifyEmailCopyWithImpl<$Res>;
  $Res call({String? token, String? email});
}

/// @nodoc
class __$VerifyEmailCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$VerifyEmailCopyWith<$Res> {
  __$VerifyEmailCopyWithImpl(
      _VerifyEmail _value, $Res Function(_VerifyEmail) _then)
      : super(_value, (v) => _then(v as _VerifyEmail));

  @override
  _VerifyEmail get _value => super._value as _VerifyEmail;

  @override
  $Res call({
    Object? token = freezed,
    Object? email = freezed,
  }) {
    return _then(_VerifyEmail(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VerifyEmail implements _VerifyEmail {
  const _$_VerifyEmail({this.token, this.email});

  @override
  final String? token;
  @override
  final String? email;

  @override
  String toString() {
    return 'NavigationState.verifyEmail(token: $token, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyEmail &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      __$VerifyEmailCopyWithImpl<_VerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? email, bool readOnlyEmail) login,
    required TResult Function(String? token, String? email) verifyEmail,
    required TResult Function() home,
  }) {
    return verifyEmail(token, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
  }) {
    return verifyEmail?.call(token, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(token, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_Home value) home,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail implements NavigationState {
  const factory _VerifyEmail({String? token, String? email}) = _$_VerifyEmail;

  String? get token => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) then) =
      __$HomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(_Home _value, $Res Function(_Home) _then)
      : super(_value, (v) => _then(v as _Home));

  @override
  _Home get _value => super._value as _Home;
}

/// @nodoc

class _$_Home implements _Home {
  const _$_Home();

  @override
  String toString() {
    return 'NavigationState.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Home);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? email, bool readOnlyEmail) login,
    required TResult Function(String? token, String? email) verifyEmail,
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? email, bool readOnlyEmail)? login,
    TResult Function(String? token, String? email)? verifyEmail,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_Home value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_Home value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class _Home implements NavigationState {
  const factory _Home() = _$_Home;
}
