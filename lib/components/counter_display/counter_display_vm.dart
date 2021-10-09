import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/components/components.dart';
import 'package:enterprise_counter/services/counter/counter_service_m.dart';
import 'package:enterprise_counter/services/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterDisplayViewModel extends BaseViewModel<CounterDisplayBaseState> {
  static const initialValue = 0;

  final ICounterService _counterService;

  CounterDisplayViewModel({required ICounterService counterService})
      : _counterService = counterService,
        super(CounterDisplayState(counter: initialValue)) {
    listenTo(_counterService.stream, _handleCounterChange);
  }

  void _handleCounterChange(CounterServiceBaseState counterState) {
    if (counterState is CounterServiceState) {
      emit(CounterDisplayState(counter: counterState.count));
    }
  }
}
