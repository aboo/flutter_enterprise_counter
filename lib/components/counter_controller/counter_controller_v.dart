import 'package:enterprise_counter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterController extends StatelessWidget {
  final CounterControllerViewModel _viewModel;

  const CounterController({
    required CounterControllerViewModel viewModel,
    Key? key,
  })  : _viewModel = viewModel,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterControllerViewModel, CounterControllerState>(
        bloc: _viewModel,
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
          onPressed: () => _viewModel.positive(),
          child: const Text('+'),
        ),
        ElevatedButton(
          onPressed: () => _viewModel.negative(),
          child: const Text('-'),
        )
      ],
    );
  }
}
