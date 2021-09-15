import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:rxdart/rxdart.dart';

part 'app_links_cubit.freezed.dart';
part 'app_links_state.dart';

@injectable
class AppLinksCubit extends Cubit<AppLinksState> {
  static final _logger = Logger('AppLinksCubit');

  final AppLinksService _appLinkService;
  final _subscription = BehaviorSubject();

  AppLinksCubit(this._appLinkService) : super(const AppLinksState.initial()) {
    _appLinkService.link.takeUntil(_subscription).listen(_linkChanged);
  }

  @override
  Future<void> close() {
    _subscription.close();
    return super.close();
  }

  void _linkChanged(AppLinkData? linkData) {
    _logger.fine('Handling link change $linkData...');

    if (linkData != null) {
      if (linkData.isEmailVerification) {
        _logger.fine('Handling verify email app link...');
        emit(
          AppLinksState.verifyEmail(
            token: linkData.token!,
            email: linkData.tokenData!.sub,
          ),
        );
        _logger.info('Done handling verify email app link.');
      }
    } else {
      emit(const AppLinksState.idle());
    }

    _logger.info('Done handling link change $linkData.');
  }

  void linkProcessed() {
    emit(const AppLinksState.idle());
  }
}
