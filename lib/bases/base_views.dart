import 'package:flutter/widgets.dart';

import '../setup.dart';
import 'bases.dart';

abstract class BaseComponentView<T extends BaseController>
    extends StatefulWidget {
  final T? controller;
  const BaseComponentView({Key? key, this.controller}) : super(key: key);
}

abstract class BaseComponentState<T extends BaseComponentView,
    M extends BaseViewModel> extends State<T> {
  late M _viewModel;
  M get viewModel => _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = locateService<M>();
    widget.controller?.setViewModel(_viewModel);
  }
}

abstract class BaseController<T extends BaseViewModel> {
  late T _viewModel;
  T get viewModel => _viewModel;

  /// This method will set the view model instance for the controller
  /// This will be automatically called in the initState of the
  /// component base state
  void setViewModel(T viewModel) {
    _viewModel = viewModel;
  }
}
