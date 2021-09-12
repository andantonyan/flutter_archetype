// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_links_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppLinkTokenData _$$_AppLinkTokenDataFromJson(Map<String, dynamic> json) =>
    _$_AppLinkTokenData(
      sub: json['sub'] as String,
      purpose: _$enumDecode(_$AppLinkTokenPurposeEnumMap, json['purpose']),
      iat: json['iat'] as int,
      exp: json['exp'] as int,
    );

Map<String, dynamic> _$$_AppLinkTokenDataToJson(_$_AppLinkTokenData instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'purpose': _$AppLinkTokenPurposeEnumMap[instance.purpose],
      'iat': instance.iat,
      'exp': instance.exp,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AppLinkTokenPurposeEnumMap = {
  AppLinkTokenPurpose.emailVerification: 'EMAIL_VERIFICATION',
  AppLinkTokenPurpose.resetPassword: 'RESET_PASSWORD',
};
