import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  static final _logger = Logger('AuthCubit');

  final AuthRepository _authRepository;
  final StorageService _storageService;
  final _subscription = BehaviorSubject();

  AuthCubit(this._authRepository, this._storageService) : super(const AuthState.initial()) {
    _authRepository.user.takeUntil(_subscription).listen(_userChanged);
  }

  @override
  Future<void> close() {
    _subscription.close();
    return super.close();
  }

  Future<void> userReloadRequested() async {
    try {
      _logger.fine('Reloading user...');
      await _authRepository.reload();
      _logger.info('Done reloading user.');
    } on Exception catch (err, trace) {
      _logger.severe('Unable to reload user', err, trace);
    }
  }

  Future<void> logoutRequested() async {
    try {
      await _authRepository.logout();
      await _storageService.deleteAuthToken();
    } on Exception catch (err, trace) {
      _logger.warning('Unable to clean user session', err, trace);
    } finally {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _userChanged(User? user) async {
    if (user == null) {
      await _storageService.deleteAuthToken();

      emit(const AuthState.unauthenticated());
    } else {
      emit(const AuthState.loading());

      try {
        _logger.fine('Saving auth token...');
        var token = await _authRepository.getToken();
        await _storageService.saveAuthToken(token);
        _logger.info('Done saving auth token.');

        emit(AuthState.authenticated(user: user));
      } catch (err, trace) {
        _logger.shout('Unable to authenticate user', err, trace);
        await logoutRequested();
      }
    }
  }
}
