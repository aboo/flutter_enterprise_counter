import 'package:enterprise_counter/bases/bases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_service_m.freezed.dart';

enum ConnectivityType {
  unknown,
  connected,
  disconnected,
}

@freezed
class ConnectivityServiceState extends BaseState
    with _$ConnectivityServiceState {
  const factory ConnectivityServiceState.identified(
      {required ConnectivityType type}) = Identified;
}
