import 'dart:async';

import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

import '../auth/auth.dart';
import '../core/core.dart';

part 'navigation_cubit.freezed.dart';

part 'navigation_state.dart';

@injectable
class NavigationCubit extends Cubit<NavigationState> {
  static final _logger = Logger('NavigationCubit');

  late AuthCubit _authCubit;
  late AppLinksCubit _appLinksCubit;
  late _NavigationStateContext _navigationContext;

  set authCubit(AuthCubit cubit) => _authCubit = cubit;

  set appLinksCubit(AppLinksCubit cubit) => _appLinksCubit = cubit;

  final _subscription = BehaviorSubject();

  NavigationCubit() : super(const NavigationState.initial());

  @override
  Future<void> close() {
    _subscription.close();
    return super.close();
  }

  void init() {
    _navigationContext = _NavigationStateContext(_DefaultState(), _authCubit);

    _appLinksCubit.stream.takeUntil(_subscription).listen(_appLinksListener);
    _authCubit.stream.takeUntil(_subscription).listen(_authListener);
  }

  void _authListener(AuthState authState) async {
    _logger.fine('Handing auth $authState...');

    var navigationState = await authState.maybeWhen<Future<NavigationState>>(
      authenticated: _navigationContext.authenticated,
      unauthenticated: _navigationContext.unauthenticated,
      orElse: _navigationContext.loading,
    );

    emit(navigationState);

    _logger.info('Done handing auth $authState.');
  }

  void _appLinksListener(AppLinksState appLinksState) async {
    _logger.fine('Handing app link $appLinksState...');

    var navigationState = await appLinksState.maybeWhen<Future<NavigationState>>(
      verifyEmail: _navigationContext.verifyEmail,
      idle: _navigationContext.linkProcessed,
      orElse: () async => state,
    );

    emit(navigationState);

    _logger.info('Done handing app link $appLinksState.');
  }
}

abstract class _NavigationState {
  Future<NavigationState> authenticated(_NavigationStateContext context, UserRecord userRecord);

  Future<NavigationState> unauthenticated(_NavigationStateContext context);

  Future<NavigationState> verifyEmail(_NavigationStateContext context, String token, String email);

  Future<NavigationState> linkProcessed(_NavigationStateContext context);
}

class _DefaultState implements _NavigationState {
  @override
  Future<NavigationState> authenticated(_NavigationStateContext context, UserRecord userRecord) async {
    return const NavigationState.home();
  }

  @override
  Future<NavigationState> unauthenticated(_NavigationStateContext context) async {
    return const NavigationState.login();
  }

  @override
  Future<NavigationState> verifyEmail(_NavigationStateContext context, String token, String email) async {
    context.setState(_VerifyEmailState());

    return context.verifyEmail(token, email);
  }

  @override
  Future<NavigationState> linkProcessed(_NavigationStateContext context) async {
    return context.isAuthenticated ? context.authenticated(context.user!) : context.unauthenticated();
  }
}

class _VerifyEmailState implements _NavigationState {
  String? _email;
  String? _token;

  @override
  Future<NavigationState> authenticated(_NavigationStateContext context, UserRecord userRecord) async {
    if (_email != null && _token != null) {
      return context.verifyEmail(_token!, _email!);
    }

    context.setState(_DefaultState());
    return context.authenticated(userRecord);
  }

  @override
  Future<NavigationState> unauthenticated(_NavigationStateContext context) async {
    return NavigationState.login(email: _email, readOnlyEmail: _email != null);
  }

  @override
  Future<NavigationState> verifyEmail(_NavigationStateContext context, String token, String email) async {
    _email = email;
    _token = token;

    if (context.user?.email != email) {
      await context.logout();
      return NavigationState.login(email: email, readOnlyEmail: true);
    }

    _email = null;
    _token = null;
    return NavigationState.verifyEmail(token: token, email: email);
  }

  @override
  Future<NavigationState> linkProcessed(_NavigationStateContext context) async {
    context.setState(_DefaultState());

    return context.linkProcessed();
  }
}

class _NavigationStateContext {
  final AuthCubit _authCubit;
  _NavigationState _state;

  bool get isAuthenticated => _authCubit.state.isAuthenticated;

  UserRecord? get user => _authCubit.state.userRecord;

  _NavigationStateContext(_NavigationState state, AuthCubit authCubit)
      : _state = state,
        _authCubit = authCubit;

  Future<NavigationState> authenticated(UserRecord userRecord) async {
    return _state.authenticated(this, userRecord);
  }

  Future<NavigationState> unauthenticated() async {
    return _state.unauthenticated(this);
  }

  Future<NavigationState> verifyEmail(String token, String email) async {
    return _state.verifyEmail(this, token, email);
  }

  Future<NavigationState> linkProcessed() async {
    return _state.linkProcessed(this);
  }

  Future<NavigationState> loading() async {
    return const NavigationState.loading();
  }

  void setState(_NavigationState newState) {
    _state = newState;
  }

  Future<void> logout() async {
    await _authCubit.logoutRequested();
  }
}
