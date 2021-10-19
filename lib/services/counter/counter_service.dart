import 'package:enterprise_counter/bases/bases.dart';
import 'package:injectable/injectable.dart';

import 'counter_service_m.dart';

const _initialCount = 0;
const _delay = Duration(seconds: 2);

abstract class ICounterService extends BaseService<CounterServiceState> {
  ICounterService()
      : super(const CounterServiceState.data(count: _initialCount));
  Future<void> increment();
  Future<void> decrement();
}

@Singleton(as: ICounterService)
class CounterService extends ICounterService {
  CounterService();

  @override
  Future<void> increment() async {
    await Future.delayed(_delay);
    emit(_getNewState(1));
  }

  @override
  Future<void> decrement() async {
    await Future.delayed(_delay);
    emit(_getNewState(-1));
  }

  CounterServiceState _getNewState(int modification) {
    if (state is Data) {
      return CounterServiceState.data(count: state.count + modification);
    }

    return state;
  }
}
