import 'package:flutter/material.dart';

import '../setup.dart';
import 'bases.dart';

@immutable
mixin HasViewModel<T extends BaseViewModel> {
  final T viewModel = locateService<T>();
}

@immutable
mixin ComponentFinder {
  final Map<String, Object> _components = <String, Object>{};

  T getComponent<T extends BaseComponentView>({String? tag, dynamic param1}) {
    final componentKey = _generateComponentKey(
      type: T,
      tag: tag,
    );
    final component = _components[componentKey];
    if (component != null) {
      return component as T;
    } else {
      final newObject = locateService<T>(param1: param1);
      _components.addAll(
        {componentKey: newObject},
      );
      return newObject;
    }
  }

  String _generateComponentKey({
    required Type type,
    String? tag,
  }) {
    if (tag != null) {
      return '${type.toString()}:$tag';
    } else {
      return type.toString();
    }
  }
}

abstract class BaseScreenView<T extends BaseViewModel> extends StatelessWidget
    with HasViewModel<T>, ComponentFinder {
  BaseScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildScreen(context: context),
    );
  }

  Widget buildScreen({
    required BuildContext context,
  });
}

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
    widget.controller?.setViewModel(viewModel);
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
