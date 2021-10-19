import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/services/connectivity/connectivity_service_m.dart';
import 'package:injectable/injectable.dart';

export 'connectivity_service_m.dart';

abstract class IConnectivityService
    extends BaseService<ConnectivityServiceState> {
  IConnectivityService()
      : super(const ConnectivityServiceState.identified(
            type: ConnectivityType.unknown));
}

@Singleton(as: IConnectivityService)
class ConnectivityService extends IConnectivityService {
  final Connectivity _connectivity;

  ConnectivityService({required Connectivity connectivity})
      : _connectivity = connectivity {
    listenTo(
      _connectivity.onConnectivityChanged,
      _handleConnectivityChanged,
    );
  }

  void _handleConnectivityChanged(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      emit(const ConnectivityServiceState.identified(
          type: ConnectivityType.disconnected));
    } else {
      emit(const ConnectivityServiceState.identified(
          type: ConnectivityType.connected));
    }
  }
}
