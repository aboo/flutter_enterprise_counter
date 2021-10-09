import 'package:enterprise_counter/bases/bases.dart';

abstract class CounterDisplayBaseState extends BaseState {}

class CounterDisplayState extends CounterDisplayBaseState {
  final int counter;

  CounterDisplayState({
    required this.counter,
  });

  @override
  List<Object?> get props => [counter];
}
