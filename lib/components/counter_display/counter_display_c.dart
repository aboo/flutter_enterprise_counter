import 'package:enterprise_counter/bases/base_views.dart';
import 'package:enterprise_counter/components/components.dart';

class CounterDisplayController extends BaseController<CounterDisplayViewModel> {
  final Function? onChanged;

  CounterDisplayController({
    this.onChanged,
  });

  void reset() {
    viewModel.reset();
  }
}
