import 'package:enterprise_counter/bases/bases.dart';

enum ConnectivityType {
  unknown,
  connected,
  disconnected,
}

abstract class ConnectivityServiceBaseState extends BaseState {}

class ConnectivityServiceState extends ConnectivityServiceBaseState {
  final ConnectivityType type;

  ConnectivityServiceState({
    required this.type,
  });

  @override
  List<Object?> get props => [type];
}
