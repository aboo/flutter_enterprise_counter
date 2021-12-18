import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/components/components.dart';
import 'package:enterprise_counter/components/counter_display/counter_display_c.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterDisplay extends BaseComponentView<CounterDisplayController> {
  const CounterDisplay({
    Key? key,
    @factoryParam CounterDisplayController? controller,
  }) : super(key: key, controller: controller);

  @override
  State<CounterDisplay> createState() => _CounterDisplayState();
}

class _CounterDisplayState
    extends BaseComponentState<CounterDisplay, CounterDisplayViewModel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterDisplayViewModel, CounterDisplayState>(
      bloc: viewModel,
      builder: (context, state) {
        if (state is Loaded) {
          widget.controller?.onChanged?.call();
          return Text(state.counter.toString());
        }
        return Container();
      },
    );
  }
}
