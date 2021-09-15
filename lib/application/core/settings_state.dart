part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    List<Locale>? supportedLocales,
    Locale? selectedLocale,
    bool? inProgress,
  }) = _SettingsState;
}
