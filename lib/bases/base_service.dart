import 'base.dart';

abstract class IService<T> {}

abstract class BaseService<T> extends BaseSubscriber<T> implements IService {
  BaseService(T initialState) : super(initialState);
}
