import 'package:injectable/injectable.dart';
import 'package:flutter_archetype/domain/domain.dart';

import 'di.env.dart';

@web
@LazySingleton(as: AppInfoService)
class WebInfoServiceImpl implements AppInfoService {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
