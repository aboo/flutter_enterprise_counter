import 'package:enterprise_counter/bases/bases.dart';
import 'package:injectable/injectable.dart';

import 'counter_service_m.dart';

const _initialCount = 0;
const _delay = Duration(seconds: 2);

abstract class ICounterService extends BaseService<CounterServiceBaseState> {
  ICounterService() : super(CounterServiceState(count: _initialCount));
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

  CounterServiceBaseState _getNewState(int modification) {
    if (state is CounterServiceState) {
      var currentCount = (state as CounterServiceState).count;
      return CounterServiceState(count: currentCount + modification);
    }

    return state;
  }
}
