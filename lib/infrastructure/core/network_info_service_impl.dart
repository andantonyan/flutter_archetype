import 'package:injectable/injectable.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:rxdart/rxdart.dart';

// FIXME: implement
@Singleton(as: NetworkInfoService)
class NetworkInfoServiceImpl implements NetworkInfoService {
  @override
  Stream<bool> get isConnected => BehaviorSubject.seeded(true);
}
