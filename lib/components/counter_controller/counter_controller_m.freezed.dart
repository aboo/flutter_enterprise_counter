// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_controller_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterControllerStateTearOff {
  const _$CounterControllerStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Busy busy() {
    return const Busy();
  }

  Unavaialble unavailable({required String reason}) {
    return Unavaialble(
      reason: reason,
    );
  }
}

/// @nodoc
const $CounterControllerState = _$CounterControllerStateTearOff();

/// @nodoc
mixin _$CounterControllerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() busy,
    required TResult Function(String reason) unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Busy value) busy,
    required TResult Function(Unavaialble value) unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterControllerStateCopyWith<$Res> {
  factory $CounterControllerStateCopyWith(CounterControllerState value,
          $Res Function(CounterControllerState) then) =
      _$CounterControllerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterControllerStateCopyWithImpl<$Res>
    implements $CounterControllerStateCopyWith<$Res> {
  _$CounterControllerStateCopyWithImpl(this._value, this._then);

  final CounterControllerState _value;
  // ignore: unused_field
  final $Res Function(CounterControllerState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$CounterControllerStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CounterControllerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() busy,
    required TResult Function(String reason) unavailable,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Busy value) busy,
    required TResult Function(Unavaialble value) unavailable,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CounterControllerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $BusyCopyWith<$Res> {
  factory $BusyCopyWith(Busy value, $Res Function(Busy) then) =
      _$BusyCopyWithImpl<$Res>;
}

/// @nodoc
class _$BusyCopyWithImpl<$Res>
    extends _$CounterControllerStateCopyWithImpl<$Res>
    implements $BusyCopyWith<$Res> {
  _$BusyCopyWithImpl(Busy _value, $Res Function(Busy) _then)
      : super(_value, (v) => _then(v as Busy));

  @override
  Busy get _value => super._value as Busy;
}

/// @nodoc

class _$Busy implements Busy {
  const _$Busy();

  @override
  String toString() {
    return 'CounterControllerState.busy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Busy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() busy,
    required TResult Function(String reason) unavailable,
  }) {
    return busy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
  }) {
    return busy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Busy value) busy,
    required TResult Function(Unavaialble value) unavailable,
  }) {
    return busy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
  }) {
    return busy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
    required TResult orElse(),
  }) {
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class Busy implements CounterControllerState {
  const factory Busy() = _$Busy;
}

/// @nodoc
abstract class $UnavaialbleCopyWith<$Res> {
  factory $UnavaialbleCopyWith(
          Unavaialble value, $Res Function(Unavaialble) then) =
      _$UnavaialbleCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$UnavaialbleCopyWithImpl<$Res>
    extends _$CounterControllerStateCopyWithImpl<$Res>
    implements $UnavaialbleCopyWith<$Res> {
  _$UnavaialbleCopyWithImpl(
      Unavaialble _value, $Res Function(Unavaialble) _then)
      : super(_value, (v) => _then(v as Unavaialble));

  @override
  Unavaialble get _value => super._value as Unavaialble;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(Unavaialble(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unavaialble implements Unavaialble {
  const _$Unavaialble({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'CounterControllerState.unavailable(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unavaialble &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  $UnavaialbleCopyWith<Unavaialble> get copyWith =>
      _$UnavaialbleCopyWithImpl<Unavaialble>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() busy,
    required TResult Function(String reason) unavailable,
  }) {
    return unavailable(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
  }) {
    return unavailable?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? busy,
    TResult Function(String reason)? unavailable,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Busy value) busy,
    required TResult Function(Unavaialble value) unavailable,
  }) {
    return unavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
  }) {
    return unavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Busy value)? busy,
    TResult Function(Unavaialble value)? unavailable,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(this);
    }
    return orElse();
  }
}

abstract class Unavaialble implements CounterControllerState {
  const factory Unavaialble({required String reason}) = _$Unavaialble;

  String get reason;
  @JsonKey(ignore: true)
  $UnavaialbleCopyWith<Unavaialble> get copyWith =>
      throw _privateConstructorUsedError;
}
