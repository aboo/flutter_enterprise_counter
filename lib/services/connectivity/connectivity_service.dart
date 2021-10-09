import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/services/connectivity/connectivity_service_m.dart';
import 'package:injectable/injectable.dart';

export 'connectivity_service_m.dart';

abstract class IConnectivityService
    extends BaseService<ConnectivityServiceBaseState> {
  IConnectivityService()
      : super(ConnectivityServiceState(type: ConnectivityType.unknown));
}

@Singleton(as: IConnectivityService)
class ConnectivityService extends IConnectivityService {
  final Connectivity _connectivity;

  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  ConnectivityService({required Connectivity connectivity})
      : _connectivity = connectivity {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_handleConnectivityChanged);
  }

  void _handleConnectivityChanged(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      emit(ConnectivityServiceState(type: ConnectivityType.disconnected));
    } else {
      emit(ConnectivityServiceState(type: ConnectivityType.connected));
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}