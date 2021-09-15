import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_archetype/l10n/l10n.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final StorageService _settingRepository;

  SettingsCubit(this._settingRepository) : super(const SettingsState()) {
    _init();
  }

  Future<void> _init() async {
    emit(state.copyWith(inProgress: true));

    try {
      var selectedLocale = await _settingRepository.getSelectedLocale();
      var supportedLocales = AppLocalizations.supportedLocales;

      emit(
        state.copyWith(
          supportedLocales: supportedLocales,
          selectedLocale: selectedLocale,
          inProgress: false,
        ),
      );
    } on Exception {
      emit(state.copyWith(inProgress: false));
    }
  }

  Future<void> localeChanged(Locale locale) async {
    emit(state.copyWith(inProgress: true));

    try {
      await _settingRepository.saveSelectedLocale(locale);

      emit(state.copyWith(selectedLocale: locale, inProgress: false));
    } on Exception {
      emit(state.copyWith(inProgress: false));
    }
  }
}
