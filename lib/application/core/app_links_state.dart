part of 'app_links_cubit.dart';

@freezed
class AppLinksState with _$AppLinksState {
  const factory AppLinksState.initial() = _Initial;

  const factory AppLinksState.idle() = _Idle;

  const factory AppLinksState.verifyEmail({
    required String token,
    required String email,
  }) = _VerifyEmail;
}
