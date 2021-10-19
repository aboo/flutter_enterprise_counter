import 'dart:async';

import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/components/counter_controller/counter_controller.dart';
import 'package:enterprise_counter/services/services.dart';
import 'package:injectable/injectable.dart';

enum _modificationType { increase, decrease }

@injectable
class CounterControllerViewModel extends BaseViewModel<CounterControllerState> {
  final ICounterService _counterService;
  final IConnectivityService _connectivityService;

  CounterControllerViewModel({
    required ICounterService counterService,
    required IConnectivityService connectivityService,
  })  : _counterService = counterService,
        _connectivityService = connectivityService,
        super(const CounterControllerState.initial()) {
    listenTo(_connectivityService.stream, _handleConnectivityChange);
  }

  Future<void> positive() async {
    await _modify(_modificationType.increase);
  }

  Future<void> negative() async {
    await _modify(_modificationType.decrease);
  }

  Future<void> _modify(_modificationType type) async {
    emit(const CounterControllerState.busy());
    type == _modificationType.decrease
        ? await _counterService.decrement()
        : await _counterService.increment();
    if (state is Busy) {
      emit(const CounterControllerState.initial());
    }
  }

  void _handleConnectivityChange(ConnectivityServiceState event) {
    if (event is Identified) {
      switch (event.type) {
        case ConnectivityType.unknown:
          _unavailable('unknown connection state');
          break;
        case ConnectivityType.disconnected:
          _unavailable('we are disconnected');
          break;
        default:
          if (state is! Busy) {
            emit(const CounterControllerState.initial());
          }
          break;
      }
    }
  }

  void _unavailable(String reason) {
    emit(CounterControllerState.unavailable(reason: reason));
  }
}
