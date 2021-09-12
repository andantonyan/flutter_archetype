// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRecord _$_$_UserRecordFromJson(Map<String, dynamic> json) {
  return _$_UserRecord(
    uid: json['uid'] as String,
    email: json['email'] as String,
    emailVerified: json['emailVerified'] as bool,
  );
}

Map<String, dynamic> _$_$_UserRecordToJson(_$_UserRecord instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
    };
