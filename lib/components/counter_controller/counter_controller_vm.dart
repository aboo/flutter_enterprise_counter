import 'dart:async';

import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/components/counter_controller/counter_controller.dart';
import 'package:enterprise_counter/services/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterControllerViewModel
    extends BaseViewModel<CounterControllerBaseState> {
  final ICounterService _counterService;
  final IConnectivityService _connectivityService;

  CounterControllerViewModel({
    required ICounterService counterService,
    required IConnectivityService connectivityService,
  })  : _counterService = counterService,
        _connectivityService = connectivityService,
        super(CounterControllerInitialState()) {
    listenTo(_connectivityService.stream, _handleConnectivityChange);
  }

  Future<void> positive() async {
    emit(CounterControllerBusyState());
    await _counterService.increment();
    if (state is CounterControllerBusyState) {
      emit(CounterControllerInitialState());
    }
  }

  Future<void> negative() async {
    emit(CounterControllerBusyState());
    await _counterService.decrement();
    if (state is CounterControllerBusyState) {
      emit(CounterControllerInitialState());
    }
  }

  void _handleConnectivityChange(ConnectivityServiceBaseState event) {
    if (event is ConnectivityServiceState) {
      switch (event.type) {
        case ConnectivityType.unknown:
          emit(CounterControllerUnavailableState('unknown connection state'));
          break;
        case ConnectivityType.disconnected:
          emit(CounterControllerUnavailableState('we are disconnected'));
          break;
        default:
          if (state is! CounterControllerBusyState) {
            emit(CounterControllerInitialState());
          }
          break;
      }
    }
  }
}
