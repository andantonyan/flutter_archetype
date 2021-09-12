import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:flutter_archetype/domain/domain.dart';

class _FirebaseAnalyticsObserver extends FirebaseAnalyticsObserver implements AnalyticsObserver {
  _FirebaseAnalyticsObserver(FirebaseAnalytics analytics) : super(analytics: analytics);
}

@Singleton(as: AnalyticsService)
class FlutterAnalyticsService implements AnalyticsService {
  static final _logger = Logger('FlutterAnalyticsService');
  static final FirebaseAnalytics _analytics = FirebaseAnalytics();

  @override
  AnalyticsObserver get observer => _FirebaseAnalyticsObserver(_analytics);

  @override
  Future<void> logEvent(
    final String name, {
    final Map<String, dynamic>? parameters,
  }) async {
    try {
      _logger.finer('Logging event:"$name" with parameters $parameters...');

      await _analytics.logEvent(
        name: name,
        parameters: parameters,
      );

      _logger.fine('Done logging event:"$name" with parameters $parameters.');
    } catch (err) {
      _logger.warning('Unable to log event:"$name"', err);
    }
  }
}
