// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_creation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostCreationRequest _$PostCreationRequestFromJson(Map<String, dynamic> json) {
  return _PostCreationRequest.fromJson(json);
}

/// @nodoc
class _$PostCreationRequestTearOff {
  const _$PostCreationRequestTearOff();

  _PostCreationRequest call(
      {required String title, required String body, required String userId}) {
    return _PostCreationRequest(
      title: title,
      body: body,
      userId: userId,
    );
  }

  PostCreationRequest fromJson(Map<String, Object> json) {
    return PostCreationRequest.fromJson(json);
  }
}

/// @nodoc
const $PostCreationRequest = _$PostCreationRequestTearOff();

/// @nodoc
mixin _$PostCreationRequest {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCreationRequestCopyWith<PostCreationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCreationRequestCopyWith<$Res> {
  factory $PostCreationRequestCopyWith(
          PostCreationRequest value, $Res Function(PostCreationRequest) then) =
      _$PostCreationRequestCopyWithImpl<$Res>;
  $Res call({String title, String body, String userId});
}

/// @nodoc
class _$PostCreationRequestCopyWithImpl<$Res>
    implements $PostCreationRequestCopyWith<$Res> {
  _$PostCreationRequestCopyWithImpl(this._value, this._then);

  final PostCreationRequest _value;
  // ignore: unused_field
  final $Res Function(PostCreationRequest) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PostCreationRequestCopyWith<$Res>
    implements $PostCreationRequestCopyWith<$Res> {
  factory _$PostCreationRequestCopyWith(_PostCreationRequest value,
          $Res Function(_PostCreationRequest) then) =
      __$PostCreationRequestCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body, String userId});
}

/// @nodoc
class __$PostCreationRequestCopyWithImpl<$Res>
    extends _$PostCreationRequestCopyWithImpl<$Res>
    implements _$PostCreationRequestCopyWith<$Res> {
  __$PostCreationRequestCopyWithImpl(
      _PostCreationRequest _value, $Res Function(_PostCreationRequest) _then)
      : super(_value, (v) => _then(v as _PostCreationRequest));

  @override
  _PostCreationRequest get _value => super._value as _PostCreationRequest;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? userId = freezed,
  }) {
    return _then(_PostCreationRequest(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostCreationRequest implements _PostCreationRequest {
  const _$_PostCreationRequest(
      {required this.title, required this.body, required this.userId});

  factory _$_PostCreationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostCreationRequestFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String userId;

  @override
  String toString() {
    return 'PostCreationRequest(title: $title, body: $body, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostCreationRequest &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$PostCreationRequestCopyWith<_PostCreationRequest> get copyWith =>
      __$PostCreationRequestCopyWithImpl<_PostCreationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostCreationRequestToJson(this);
  }
}

abstract class _PostCreationRequest implements PostCreationRequest {
  const factory _PostCreationRequest(
      {required String title,
      required String body,
      required String userId}) = _$_PostCreationRequest;

  factory _PostCreationRequest.fromJson(Map<String, dynamic> json) =
      _$_PostCreationRequest.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostCreationRequestCopyWith<_PostCreationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
