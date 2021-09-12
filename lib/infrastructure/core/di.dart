import 'package:flutter/foundation.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';
import 'di.env.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async {
  $initGetIt(getIt, environment: kIsWeb ? web.name : mobile.name);

  await getIt<AppLinksService>().init();
  await getIt<StorageService>().init();
}
