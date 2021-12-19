import 'package:injectable/injectable.dart';

import 'base.dart';

abstract class IViewModel<T> {}

abstract class BaseViewModel<T> extends BaseSubscriber<T>
    implements IViewModel {
  BaseViewModel(T initialState) : super(initialState);
}

@Singleton(as: BaseViewModel)

/// This class shouldn't be used directly
/// This is useful for screens that don't need a view model implementation
/// because they don't have a logic. Therefore an instance of this which
/// translates to BaseViewModel<dynamic> will be injected into those screens
class DynamicViewModel extends BaseViewModel<dynamic> {
  DynamicViewModel() : super(0);
}
