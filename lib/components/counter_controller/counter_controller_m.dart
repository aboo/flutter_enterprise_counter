import 'package:enterprise_counter/bases/bases.dart';

abstract class CounterControllerBaseState extends BaseState {}

class CounterControllerInitialState extends CounterControllerBaseState {
  @override
  List<Object?> get props => [];
}

class CounterControllerBusyState extends CounterControllerBaseState {
  @override
  List<Object?> get props => [];
}

class CounterControllerUnavailableState extends CounterControllerBaseState {
  final String reason;

  CounterControllerUnavailableState(this.reason);

  @override
  List<Object?> get props => [reason];
}
