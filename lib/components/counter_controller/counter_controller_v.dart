import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterController extends BaseComponentView {
  const CounterController({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterController> createState() => _CounterControllerState();
}

class _CounterControllerState
    extends BaseComponentState<CounterController, CounterControllerViewModel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterControllerViewModel, CounterControllerState>(
        bloc: viewModel,
        builder: (context, state) {
          if (state is Busy) {
            return const Text('busy ...');
          } else if (state is Unavaialble) {
            return Text(state.reason);
          }

          return _buildControllers();
        });
  }

  Widget _buildControllers() {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () => viewModel.positive(),
          child: const Text('+'),
        ),
        ElevatedButton(
          onPressed: () => viewModel.negative(),
          child: const Text('-'),
        )
      ],
    );
  }
}
