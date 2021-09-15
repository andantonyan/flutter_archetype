part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(AppTab.home) AppTab activeTab,
    Exception? err,
  }) = _HomeState;
}
