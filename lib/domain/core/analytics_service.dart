import 'package:flutter/widgets.dart';

// TODO:
abstract class AnalyticsObserver implements NavigatorObserver {}

abstract class AnalyticsService {
  AnalyticsObserver get observer;

  Future<void> logEvent(
    String name, {
    Map<String, dynamic>? parameters,
  });
}
