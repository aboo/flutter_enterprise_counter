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
    emit(await _getNewState(1));
  }

  @override
  Future<void> decrement() async {
    emit(await _getNewState(-1));
  }

  Future<int> _getNewCount(int modification, int currentCount) async {
    await Future.delayed(_delay); // simulate network delay
    return currentCount + modification;
  }

  Future<CounterServiceState> _getNewState(int modification) async {
    if (state is Data) {
      var newCount = await _getNewCount(modification, state.count);
      return CounterServiceState.data(count: newCount);
    }

    return state;
  }
}
