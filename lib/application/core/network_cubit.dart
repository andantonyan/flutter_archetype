import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:rxdart/rxdart.dart';

part 'network_cubit.freezed.dart';
part 'network_state.dart';

@injectable
class NetworkCubit extends Cubit<NetworkState> {
  final NetworkInfoService _networkInfoService;
  final _subscription = BehaviorSubject();

  NetworkCubit(this._networkInfoService) : super(const NetworkState.initial()) {
    _networkInfoService.isConnected.takeUntil(_subscription).listen(_networkConnectionChanged);
  }

  @override
  Future<void> close() {
    _subscription.close();
    return super.close();
  }

  void _networkConnectionChanged(bool status) {
    emit(status ? const NetworkState.connected() : const NetworkState.disconnected());
  }
}
