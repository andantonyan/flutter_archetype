part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.initial() = _Initial;

  const factory NetworkState.connected() = _Networkenticated;

  const factory NetworkState.disconnected() = _Unauthenticated;
}
