import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_creation_request.freezed.dart';

part 'post_creation_request.g.dart';

@freezed
class PostCreationRequest with _$PostCreationRequest {
  const factory PostCreationRequest({
    required String title,
    required String body,
    required String userId,
  }) = _PostCreationRequest;

  factory PostCreationRequest.fromJson(Map<String, dynamic> json) => _$PostCreationRequestFromJson(json);
}
