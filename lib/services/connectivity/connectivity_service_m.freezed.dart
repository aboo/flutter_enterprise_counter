// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity_service_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectivityServiceStateTearOff {
  const _$ConnectivityServiceStateTearOff();

  Identified identified({required ConnectivityType type}) {
    return Identified(
      type: type,
    );
  }
}

/// @nodoc
const $ConnectivityServiceState = _$ConnectivityServiceStateTearOff();

/// @nodoc
mixin _$ConnectivityServiceState {
  ConnectivityType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityType type) identified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ConnectivityType type)? identified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityType type)? identified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Identified value) identified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Identified value)? identified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Identified value)? identified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityServiceStateCopyWith<ConnectivityServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityServiceStateCopyWith<$Res> {
  factory $ConnectivityServiceStateCopyWith(ConnectivityServiceState value,
          $Res Function(ConnectivityServiceState) then) =
      _$ConnectivityServiceStateCopyWithImpl<$Res>;
  $Res call({ConnectivityType type});
}

/// @nodoc
class _$ConnectivityServiceStateCopyWithImpl<$Res>
    implements $ConnectivityServiceStateCopyWith<$Res> {
  _$ConnectivityServiceStateCopyWithImpl(this._value, this._then);

  final ConnectivityServiceState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityServiceState) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ConnectivityType,
    ));
  }
}

/// @nodoc
abstract class $IdentifiedCopyWith<$Res>
    implements $ConnectivityServiceStateCopyWith<$Res> {
  factory $IdentifiedCopyWith(
          Identified value, $Res Function(Identified) then) =
      _$IdentifiedCopyWithImpl<$Res>;
  @override
  $Res call({ConnectivityType type});
}

/// @nodoc
class _$IdentifiedCopyWithImpl<$Res>
    extends _$ConnectivityServiceStateCopyWithImpl<$Res>
    implements $IdentifiedCopyWith<$Res> {
  _$IdentifiedCopyWithImpl(Identified _value, $Res Function(Identified) _then)
      : super(_value, (v) => _then(v as Identified));

  @override
  Identified get _value => super._value as Identified;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(Identified(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ConnectivityType,
    ));
  }
}

/// @nodoc

class _$Identified implements Identified {
  const _$Identified({required this.type});

  @override
  final ConnectivityType type;

  @override
  String toString() {
    return 'ConnectivityServiceState.identified(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Identified &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  $IdentifiedCopyWith<Identified> get copyWith =>
      _$IdentifiedCopyWithImpl<Identified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityType type) identified,
  }) {
    return identified(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ConnectivityType type)? identified,
  }) {
    return identified?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityType type)? identified,
    required TResult orElse(),
  }) {
    if (identified != null) {
      return identified(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Identified value) identified,
  }) {
    return identified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Identified value)? identified,
  }) {
    return identified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Identified value)? identified,
    required TResult orElse(),
  }) {
    if (identified != null) {
      return identified(this);
    }
    return orElse();
  }
}

abstract class Identified implements ConnectivityServiceState {
  const factory Identified({required ConnectivityType type}) = _$Identified;

  @override
  ConnectivityType get type;
  @override
  @JsonKey(ignore: true)
  $IdentifiedCopyWith<Identified> get copyWith =>
      throw _privateConstructorUsedError;
}
