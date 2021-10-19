import 'package:enterprise_counter/bases/bases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_display_m.freezed.dart';

@freezed
class CounterDisplayState extends BaseState with _$CounterDisplayState {
  const factory CounterDisplayState.loaded({required int counter}) = Loaded;
}
