// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_links_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppLinkDataTearOff {
  const _$AppLinkDataTearOff();

  _AppLinkData call(Uri link, [String? token, AppLinkTokenData? tokenData]) {
    return _AppLinkData(
      link,
      token,
      tokenData,
    );
  }
}

/// @nodoc
const $AppLinkData = _$AppLinkDataTearOff();

/// @nodoc
mixin _$AppLinkData {
  Uri get link => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  AppLinkTokenData? get tokenData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLinkDataCopyWith<AppLinkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLinkDataCopyWith<$Res> {
  factory $AppLinkDataCopyWith(
          AppLinkData value, $Res Function(AppLinkData) then) =
      _$AppLinkDataCopyWithImpl<$Res>;
  $Res call({Uri link, String? token, AppLinkTokenData? tokenData});

  $AppLinkTokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$AppLinkDataCopyWithImpl<$Res> implements $AppLinkDataCopyWith<$Res> {
  _$AppLinkDataCopyWithImpl(this._value, this._then);

  final AppLinkData _value;
  // ignore: unused_field
  final $Res Function(AppLinkData) _then;

  @override
  $Res call({
    Object? link = freezed,
    Object? token = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenData: tokenData == freezed
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as AppLinkTokenData?,
    ));
  }

  @override
  $AppLinkTokenDataCopyWith<$Res>? get tokenData {
    if (_value.tokenData == null) {
      return null;
    }

    return $AppLinkTokenDataCopyWith<$Res>(_value.tokenData!, (value) {
      return _then(_value.copyWith(tokenData: value));
    });
  }
}

/// @nodoc
abstract class _$AppLinkDataCopyWith<$Res>
    implements $AppLinkDataCopyWith<$Res> {
  factory _$AppLinkDataCopyWith(
          _AppLinkData value, $Res Function(_AppLinkData) then) =
      __$AppLinkDataCopyWithImpl<$Res>;
  @override
  $Res call({Uri link, String? token, AppLinkTokenData? tokenData});

  @override
  $AppLinkTokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$AppLinkDataCopyWithImpl<$Res> extends _$AppLinkDataCopyWithImpl<$Res>
    implements _$AppLinkDataCopyWith<$Res> {
  __$AppLinkDataCopyWithImpl(
      _AppLinkData _value, $Res Function(_AppLinkData) _then)
      : super(_value, (v) => _then(v as _AppLinkData));

  @override
  _AppLinkData get _value => super._value as _AppLinkData;

  @override
  $Res call({
    Object? link = freezed,
    Object? token = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_AppLinkData(
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenData == freezed
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as AppLinkTokenData?,
    ));
  }
}

/// @nodoc
class _$_AppLinkData extends _AppLinkData {
  const _$_AppLinkData(this.link, [this.token, this.tokenData]) : super._();

  @override
  final Uri link;
  @override
  final String? token;
  @override
  final AppLinkTokenData? tokenData;

  @override
  String toString() {
    return 'AppLinkData(link: $link, token: $token, tokenData: $tokenData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppLinkData &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.tokenData, tokenData) ||
                const DeepCollectionEquality()
                    .equals(other.tokenData, tokenData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(tokenData);

  @JsonKey(ignore: true)
  @override
  _$AppLinkDataCopyWith<_AppLinkData> get copyWith =>
      __$AppLinkDataCopyWithImpl<_AppLinkData>(this, _$identity);
}

abstract class _AppLinkData extends AppLinkData {
  const factory _AppLinkData(Uri link,
      [String? token, AppLinkTokenData? tokenData]) = _$_AppLinkData;
  const _AppLinkData._() : super._();

  @override
  Uri get link => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  AppLinkTokenData? get tokenData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppLinkDataCopyWith<_AppLinkData> get copyWith =>
      throw _privateConstructorUsedError;
}

AppLinkTokenData _$AppLinkTokenDataFromJson(Map<String, dynamic> json) {
  return _AppLinkTokenData.fromJson(json);
}

/// @nodoc
class _$AppLinkTokenDataTearOff {
  const _$AppLinkTokenDataTearOff();

  _AppLinkTokenData call(
      {required String sub,
      required AppLinkTokenPurpose purpose,
      required int iat,
      required int exp}) {
    return _AppLinkTokenData(
      sub: sub,
      purpose: purpose,
      iat: iat,
      exp: exp,
    );
  }

  AppLinkTokenData fromJson(Map<String, Object> json) {
    return AppLinkTokenData.fromJson(json);
  }
}

/// @nodoc
const $AppLinkTokenData = _$AppLinkTokenDataTearOff();

/// @nodoc
mixin _$AppLinkTokenData {
  String get sub => throw _privateConstructorUsedError;
  AppLinkTokenPurpose get purpose => throw _privateConstructorUsedError;
  int get iat => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppLinkTokenDataCopyWith<AppLinkTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLinkTokenDataCopyWith<$Res> {
  factory $AppLinkTokenDataCopyWith(
          AppLinkTokenData value, $Res Function(AppLinkTokenData) then) =
      _$AppLinkTokenDataCopyWithImpl<$Res>;
  $Res call({String sub, AppLinkTokenPurpose purpose, int iat, int exp});
}

/// @nodoc
class _$AppLinkTokenDataCopyWithImpl<$Res>
    implements $AppLinkTokenDataCopyWith<$Res> {
  _$AppLinkTokenDataCopyWithImpl(this._value, this._then);

  final AppLinkTokenData _value;
  // ignore: unused_field
  final $Res Function(AppLinkTokenData) _then;

  @override
  $Res call({
    Object? sub = freezed,
    Object? purpose = freezed,
    Object? iat = freezed,
    Object? exp = freezed,
  }) {
    return _then(_value.copyWith(
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as AppLinkTokenPurpose,
      iat: iat == freezed
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppLinkTokenDataCopyWith<$Res>
    implements $AppLinkTokenDataCopyWith<$Res> {
  factory _$AppLinkTokenDataCopyWith(
          _AppLinkTokenData value, $Res Function(_AppLinkTokenData) then) =
      __$AppLinkTokenDataCopyWithImpl<$Res>;
  @override
  $Res call({String sub, AppLinkTokenPurpose purpose, int iat, int exp});
}

/// @nodoc
class __$AppLinkTokenDataCopyWithImpl<$Res>
    extends _$AppLinkTokenDataCopyWithImpl<$Res>
    implements _$AppLinkTokenDataCopyWith<$Res> {
  __$AppLinkTokenDataCopyWithImpl(
      _AppLinkTokenData _value, $Res Function(_AppLinkTokenData) _then)
      : super(_value, (v) => _then(v as _AppLinkTokenData));

  @override
  _AppLinkTokenData get _value => super._value as _AppLinkTokenData;

  @override
  $Res call({
    Object? sub = freezed,
    Object? purpose = freezed,
    Object? iat = freezed,
    Object? exp = freezed,
  }) {
    return _then(_AppLinkTokenData(
      sub: sub == freezed
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as AppLinkTokenPurpose,
      iat: iat == freezed
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppLinkTokenData implements _AppLinkTokenData {
  const _$_AppLinkTokenData(
      {required this.sub,
      required this.purpose,
      required this.iat,
      required this.exp});

  factory _$_AppLinkTokenData.fromJson(Map<String, dynamic> json) =>
      _$_$_AppLinkTokenDataFromJson(json);

  @override
  final String sub;
  @override
  final AppLinkTokenPurpose purpose;
  @override
  final int iat;
  @override
  final int exp;

  @override
  String toString() {
    return 'AppLinkTokenData(sub: $sub, purpose: $purpose, iat: $iat, exp: $exp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppLinkTokenData &&
            (identical(other.sub, sub) ||
                const DeepCollectionEquality().equals(other.sub, sub)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality()
                    .equals(other.purpose, purpose)) &&
            (identical(other.iat, iat) ||
                const DeepCollectionEquality().equals(other.iat, iat)) &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sub) ^
      const DeepCollectionEquality().hash(purpose) ^
      const DeepCollectionEquality().hash(iat) ^
      const DeepCollectionEquality().hash(exp);

  @JsonKey(ignore: true)
  @override
  _$AppLinkTokenDataCopyWith<_AppLinkTokenData> get copyWith =>
      __$AppLinkTokenDataCopyWithImpl<_AppLinkTokenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppLinkTokenDataToJson(this);
  }
}

abstract class _AppLinkTokenData implements AppLinkTokenData {
  const factory _AppLinkTokenData(
      {required String sub,
      required AppLinkTokenPurpose purpose,
      required int iat,
      required int exp}) = _$_AppLinkTokenData;

  factory _AppLinkTokenData.fromJson(Map<String, dynamic> json) =
      _$_AppLinkTokenData.fromJson;

  @override
  String get sub => throw _privateConstructorUsedError;
  @override
  AppLinkTokenPurpose get purpose => throw _privateConstructorUsedError;
  @override
  int get iat => throw _privateConstructorUsedError;
  @override
  int get exp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppLinkTokenDataCopyWith<_AppLinkTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}
