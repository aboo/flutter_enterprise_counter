import 'package:enterprise_counter/bases/bases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_service_m.freezed.dart';

@freezed
class CounterServiceState extends BaseState with _$CounterServiceState {
  const factory CounterServiceState.data({required int count}) = Data;
}
