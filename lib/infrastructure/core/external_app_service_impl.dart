import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_exception_mapper.dart';

@Singleton(as: ExternalAppService)
class ExternalAppServiceImpl implements ExternalAppService {
  static final _logger = Logger('ExternalAppServiceImpl');

  @override
  Future<void> openDefaultEmailApp() async {
    try {
      _logger.finer('Opening default email app...');
      if (Platform.isAndroid) {
        var intent = const AndroidIntent(
          action: 'android.intent.action.MAIN',
          category: 'android.intent.category.APP_EMAIL',
          flags: [Flag.FLAG_ACTIVITY_NEW_TASK],
        );

        await intent.launch();
      } else if (Platform.isIOS) {
        await launch('message://');
      }
      _logger.fine('Done opening default email app.');
    } on Exception catch (err, trace) {
      _logger.severe('Unable to open default email app', err, trace);
      throw err.toApp;
    }
  }
}
