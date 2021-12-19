import 'package:enterprise_counter/bases/bases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_m.freezed.dart';

@freezed
class HomeScreenState extends BaseState with _$HomeScreenState {
  const factory HomeScreenState.initial() = Initial;
}
