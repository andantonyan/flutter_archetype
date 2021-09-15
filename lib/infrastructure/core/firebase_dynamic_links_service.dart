import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

import 'app_exception_mapper.dart';
import 'di.env.dart';

@mobile
@LazySingleton(as: AppLinksService)
class FirebaseDynamicLinksService implements AppLinksService {
  static final _logger = Logger('FirebaseDynamicLinksService');

  static AppLinkData? _mapLinkDataToAppLinkData(PendingDynamicLinkData? linkData) {
    if (linkData == null) return null;

    var token = linkData.link.queryParameters['token'];
    AppLinkTokenData? tokenData;

    if (token != null) {
      try {
        tokenData = AppLinkTokenData.fromJwt(token);
      } on Exception catch (err) {
        _logger.warning('Unable to decode jwt token', err);
      }
    }

    return AppLinkData(linkData.link, token, tokenData);
  }

  late final FirebaseDynamicLinks _linksService;
  final _controller = BehaviorSubject<AppLinkData?>();

  @override
  Stream<AppLinkData?> get link => _controller.stream
      .doOnData((event) => _logger.fine('Emitting new link event $event'))
      .doOnError((err, trace) => _logger.severe('Error when listening firebase link events', err, trace));

  @override
  Future<void> init() async {
    _linksService = FirebaseDynamicLinks.instance;

    _logger.finer('Initializing firebase dynamic link service...');

    var initialLink = await _linksService.getInitialLink();
    _controller.add(_mapLinkDataToAppLinkData(initialLink));

    _linksService.onLink(
      onSuccess: (linkData) async => _controller.add(_mapLinkDataToAppLinkData(linkData)),
      onError: (err) async => _controller.addError(err.toApp),
    );

    _logger.fine('Done initializing firebase dynamic link service.');
  }
}
