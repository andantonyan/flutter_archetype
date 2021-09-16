part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = _Initial;

  const factory NavigationState.loading() = _Loading;

  const factory NavigationState.login({
    String? email,
    @Default(false) bool readOnlyEmail,
  }) = _Login;

  const factory NavigationState.verifyEmail({
    String? token,
    String? email,
  }) = _VerifyEmail;

  const factory NavigationState.home() = _Home;
}
