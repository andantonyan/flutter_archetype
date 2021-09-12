import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/jwt_utils.dart';

part 'app_links_service.freezed.dart';

part 'app_links_service.g.dart';

abstract class AppLinksService {
  Stream<AppLinkData?> get link;

  // TODO: make AppServiceInit interface
  Future<void> init();
}

@freezed
class AppLinkData with _$AppLinkData {
  bool get isEmailVerification => tokenData?.purpose == AppLinkTokenPurpose.emailVerification;

  bool get isResetPassword => tokenData?.purpose == AppLinkTokenPurpose.resetPassword;

  const AppLinkData._();

  const factory AppLinkData(
    Uri link, [
    String? token,
    AppLinkTokenData? tokenData,
  ]) = _AppLinkData;
}

enum AppLinkTokenPurpose {
  @JsonValue('EMAIL_VERIFICATION')
  emailVerification,

  @JsonValue('RESET_PASSWORD')
  resetPassword,
}

@freezed
class AppLinkTokenData with _$AppLinkTokenData {
  const factory AppLinkTokenData({
    required String sub,
    required AppLinkTokenPurpose purpose,
    required int iat,
    required int exp,
  }) = _AppLinkTokenData;

  factory AppLinkTokenData.fromJwt(String token) {
    var decodedToken = JwtUtils.decodeJwt(token);
    return AppLinkTokenData.fromJson(decodedToken);
  }

  factory AppLinkTokenData.fromJson(Map<String, dynamic> json) => _$AppLinkTokenDataFromJson(json);
}
