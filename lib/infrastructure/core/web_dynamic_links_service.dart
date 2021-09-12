import 'package:injectable/injectable.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:rxdart/rxdart.dart';

import 'di.env.dart';

@web
@LazySingleton(as: AppLinksService)
class WebDynamicLinksService implements AppLinksService {
  @override
  Stream<AppLinkData?> get link => BehaviorSubject();

  @override
  Future<void> init() async {}
}
