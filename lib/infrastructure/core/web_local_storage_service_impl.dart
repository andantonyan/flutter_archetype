import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';

import 'di.env.dart';

@web
@LazySingleton(as: StorageService)
class WebLocalStorageServiceImpl implements StorageService {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
