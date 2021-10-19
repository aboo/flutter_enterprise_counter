import 'package:enterprise_counter/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterDisplay extends StatelessWidget {
  const CounterDisplay({Key? key, required CounterDisplayViewModel viewModel})
      : _viewMode = viewModel,
        super(key: key);

  final CounterDisplayViewModel _viewMode;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterDisplayViewModel, CounterDisplayState>(
      bloc: _viewMode,
      builder: (context, state) {
        if (state is Loaded) {
          return Text(state.counter.toString());
        }
        return Container();
      },
    );
  }
}
