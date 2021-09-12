import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_record.freezed.dart';
part 'user_record.g.dart';

@freezed
class UserRecord with _$UserRecord {
  const factory UserRecord({
    required String uid,
    required String email,
    required bool emailVerified,
  }) = _UserRecord;

  factory UserRecord.fromJson(Map<String, dynamic> json) => _$UserRecordFromJson(json);
}
