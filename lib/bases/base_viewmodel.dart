import 'base.dart';

abstract class IViewModel<T> {}

abstract class BaseViewModel<T> extends BaseSubscriber<T>
    implements IViewModel {
  BaseViewModel(T initialState) : super(initialState);
}
