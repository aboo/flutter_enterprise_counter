import 'package:enterprise_counter/bases/bases.dart';

abstract class CounterServiceBaseState extends BaseState {}

class CounterServiceState extends CounterServiceBaseState {
  final int count;

  CounterServiceState({
    required this.count,
  });

  @override
  List<Object?> get props => [count];
}
