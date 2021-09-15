part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  bool get isAuthenticated => maybeMap(authenticated: (_) => true, orElse: () => false);

  bool get isInitialized => maybeMap(initial: (_) => false, orElse: () => true);

  bool get isLoading => maybeMap(loading: (_) => true, orElse: () => false);

  UserRecord? get userRecord => maybeMap(authenticated: (state) => state.userRecord, orElse: () => null);

  const AuthState._();

  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.authenticated({required UserRecord userRecord}) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;
}
