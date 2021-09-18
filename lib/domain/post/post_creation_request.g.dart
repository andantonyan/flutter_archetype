// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_creation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostCreationRequest _$$_PostCreationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PostCreationRequest(
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_PostCreationRequestToJson(
        _$_PostCreationRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
    };
