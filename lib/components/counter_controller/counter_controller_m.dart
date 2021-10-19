import 'package:enterprise_counter/bases/bases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_controller_m.freezed.dart';

@freezed
class CounterControllerState extends BaseState with _$CounterControllerState {
  const factory CounterControllerState.initial() = Initial;
  const factory CounterControllerState.busy() = Busy;
  const factory CounterControllerState.unavailable({required String reason}) =
      Unavaialble;
}
