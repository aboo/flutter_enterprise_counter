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
    ConnectivityType type;

    if (result == ConnectivityResult.none) {
      type = ConnectivityType.disconnected;
    } else {
      type = ConnectivityType.connected;
    }

    emit(ConnectivityServiceState.identified(type: type));
  }
}
