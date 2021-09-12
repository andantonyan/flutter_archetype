// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRecord _$UserRecordFromJson(Map<String, dynamic> json) {
  return _UserRecord.fromJson(json);
}

/// @nodoc
class _$UserRecordTearOff {
  const _$UserRecordTearOff();

  _UserRecord call(
      {required String uid,
      required String email,
      required bool emailVerified}) {
    return _UserRecord(
      uid: uid,
      email: email,
      emailVerified: emailVerified,
    );
  }

  UserRecord fromJson(Map<String, Object> json) {
    return UserRecord.fromJson(json);
  }
}

/// @nodoc
const $UserRecord = _$UserRecordTearOff();

/// @nodoc
mixin _$UserRecord {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRecordCopyWith<UserRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRecordCopyWith<$Res> {
  factory $UserRecordCopyWith(
          UserRecord value, $Res Function(UserRecord) then) =
      _$UserRecordCopyWithImpl<$Res>;
  $Res call({String uid, String email, bool emailVerified});
}

/// @nodoc
class _$UserRecordCopyWithImpl<$Res> implements $UserRecordCopyWith<$Res> {
  _$UserRecordCopyWithImpl(this._value, this._then);

  final UserRecord _value;
  // ignore: unused_field
  final $Res Function(UserRecord) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserRecordCopyWith<$Res> implements $UserRecordCopyWith<$Res> {
  factory _$UserRecordCopyWith(
          _UserRecord value, $Res Function(_UserRecord) then) =
      __$UserRecordCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, bool emailVerified});
}

/// @nodoc
class __$UserRecordCopyWithImpl<$Res> extends _$UserRecordCopyWithImpl<$Res>
    implements _$UserRecordCopyWith<$Res> {
  __$UserRecordCopyWithImpl(
      _UserRecord _value, $Res Function(_UserRecord) _then)
      : super(_value, (v) => _then(v as _UserRecord));

  @override
  _UserRecord get _value => super._value as _UserRecord;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
  }) {
    return _then(_UserRecord(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRecord implements _UserRecord {
  const _$_UserRecord(
      {required this.uid, required this.email, required this.emailVerified});

  factory _$_UserRecord.fromJson(Map<String, dynamic> json) =>
      _$$_UserRecordFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final bool emailVerified;

  @override
  String toString() {
    return 'UserRecord(uid: $uid, email: $email, emailVerified: $emailVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRecord &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified);

  @JsonKey(ignore: true)
  @override
  _$UserRecordCopyWith<_UserRecord> get copyWith =>
      __$UserRecordCopyWithImpl<_UserRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRecordToJson(this);
  }
}

abstract class _UserRecord implements UserRecord {
  const factory _UserRecord(
      {required String uid,
      required String email,
      required bool emailVerified}) = _$_UserRecord;

  factory _UserRecord.fromJson(Map<String, dynamic> json) =
      _$_UserRecord.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  bool get emailVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRecordCopyWith<_UserRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
