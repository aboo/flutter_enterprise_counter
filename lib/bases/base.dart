import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef StreamHandler<T> = void Function(T);

abstract class IStreamer<T> {}

abstract class BaseStreamer<T> extends Cubit<T> implements IStreamer<T> {
  BaseStreamer(T initialState) : super(initialState);
}

abstract class ISubscriber {
  @protected
  void listenTo<U>(Stream<U> stream, StreamHandler<U> handler);

  Future<void> close();
}

abstract class BaseSubscriber<T> extends BaseStreamer<T>
    implements ISubscriber {
  final List<StreamSubscription<dynamic>> _subscriptions;

  BaseSubscriber(T initialState)
      : _subscriptions = [],
        super(initialState);

  @override
  void listenTo<U>(Stream<U> stream, StreamHandler<U> handler) {
    var subscription = stream.listen(handler);
    _subscriptions.add(subscription);
  }

  @override
  Future<void> close() {
    _subscriptions.forEach(_cancelSubscription);
    return super.close();
  }

  void _cancelSubscription(StreamSubscription subscription) {
    subscription.cancel();
  }
}
