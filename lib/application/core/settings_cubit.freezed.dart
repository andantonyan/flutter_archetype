// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {List<Locale>? supportedLocales,
      Locale? selectedLocale,
      bool? inProgress}) {
    return _SettingsState(
      supportedLocales: supportedLocales,
      selectedLocale: selectedLocale,
      inProgress: inProgress,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  List<Locale>? get supportedLocales => throw _privateConstructorUsedError;
  Locale? get selectedLocale => throw _privateConstructorUsedError;
  bool? get inProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Locale>? supportedLocales,
      Locale? selectedLocale,
      bool? inProgress});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? supportedLocales = freezed,
    Object? selectedLocale = freezed,
    Object? inProgress = freezed,
  }) {
    return _then(_value.copyWith(
      supportedLocales: supportedLocales == freezed
          ? _value.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>?,
      selectedLocale: selectedLocale == freezed
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      inProgress: inProgress == freezed
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Locale>? supportedLocales,
      Locale? selectedLocale,
      bool? inProgress});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? supportedLocales = freezed,
    Object? selectedLocale = freezed,
    Object? inProgress = freezed,
  }) {
    return _then(_SettingsState(
      supportedLocales: supportedLocales == freezed
          ? _value.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>?,
      selectedLocale: selectedLocale == freezed
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      inProgress: inProgress == freezed
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {this.supportedLocales, this.selectedLocale, this.inProgress});

  @override
  final List<Locale>? supportedLocales;
  @override
  final Locale? selectedLocale;
  @override
  final bool? inProgress;

  @override
  String toString() {
    return 'SettingsState(supportedLocales: $supportedLocales, selectedLocale: $selectedLocale, inProgress: $inProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.supportedLocales, supportedLocales) ||
                const DeepCollectionEquality()
                    .equals(other.supportedLocales, supportedLocales)) &&
            (identical(other.selectedLocale, selectedLocale) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLocale, selectedLocale)) &&
            (identical(other.inProgress, inProgress) ||
                const DeepCollectionEquality()
                    .equals(other.inProgress, inProgress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(supportedLocales) ^
      const DeepCollectionEquality().hash(selectedLocale) ^
      const DeepCollectionEquality().hash(inProgress);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {List<Locale>? supportedLocales,
      Locale? selectedLocale,
      bool? inProgress}) = _$_SettingsState;

  @override
  List<Locale>? get supportedLocales => throw _privateConstructorUsedError;
  @override
  Locale? get selectedLocale => throw _privateConstructorUsedError;
  @override
  bool? get inProgress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
