// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchangerates_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExchangeRatesListEventTearOff {
  const _$ExchangeRatesListEventTearOff();

  GetExchangeRatesEvent read() {
    return const GetExchangeRatesEvent();
  }
}

/// @nodoc
const $ExchangeRatesListEvent = _$ExchangeRatesListEventTearOff();

/// @nodoc
mixin _$ExchangeRatesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRatesEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetExchangeRatesEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRatesEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesListEventCopyWith<$Res> {
  factory $ExchangeRatesListEventCopyWith(ExchangeRatesListEvent value,
          $Res Function(ExchangeRatesListEvent) then) =
      _$ExchangeRatesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExchangeRatesListEventCopyWithImpl<$Res>
    implements $ExchangeRatesListEventCopyWith<$Res> {
  _$ExchangeRatesListEventCopyWithImpl(this._value, this._then);

  final ExchangeRatesListEvent _value;
  // ignore: unused_field
  final $Res Function(ExchangeRatesListEvent) _then;
}

/// @nodoc
abstract class $GetExchangeRatesEventCopyWith<$Res> {
  factory $GetExchangeRatesEventCopyWith(GetExchangeRatesEvent value,
          $Res Function(GetExchangeRatesEvent) then) =
      _$GetExchangeRatesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetExchangeRatesEventCopyWithImpl<$Res>
    extends _$ExchangeRatesListEventCopyWithImpl<$Res>
    implements $GetExchangeRatesEventCopyWith<$Res> {
  _$GetExchangeRatesEventCopyWithImpl(
      GetExchangeRatesEvent _value, $Res Function(GetExchangeRatesEvent) _then)
      : super(_value, (v) => _then(v as GetExchangeRatesEvent));

  @override
  GetExchangeRatesEvent get _value => super._value as GetExchangeRatesEvent;
}

/// @nodoc

class _$GetExchangeRatesEvent extends GetExchangeRatesEvent {
  const _$GetExchangeRatesEvent() : super._();

  @override
  String toString() {
    return 'ExchangeRatesListEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetExchangeRatesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetExchangeRatesEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetExchangeRatesEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetExchangeRatesEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class GetExchangeRatesEvent extends ExchangeRatesListEvent {
  const factory GetExchangeRatesEvent() = _$GetExchangeRatesEvent;
  const GetExchangeRatesEvent._() : super._();
}

/// @nodoc
class _$ExchangeRatesListStateTearOff {
  const _$ExchangeRatesListStateTearOff();

  InitialExchangeRatesListState initial() {
    return const InitialExchangeRatesListState();
  }

  LoadingExchangeRatesListState loading() {
    return const LoadingExchangeRatesListState();
  }

  LoadedExchangeRatesListState loaded(ExchangeRateModel rates) {
    return LoadedExchangeRatesListState(
      rates,
    );
  }

  FailureExchangeRatesListState failure() {
    return const FailureExchangeRatesListState();
  }
}

/// @nodoc
const $ExchangeRatesListState = _$ExchangeRatesListStateTearOff();

/// @nodoc
mixin _$ExchangeRatesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ExchangeRateModel rates) loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialExchangeRatesListState value) initial,
    required TResult Function(LoadingExchangeRatesListState value) loading,
    required TResult Function(LoadedExchangeRatesListState value) loaded,
    required TResult Function(FailureExchangeRatesListState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRatesListStateCopyWith<$Res> {
  factory $ExchangeRatesListStateCopyWith(ExchangeRatesListState value,
          $Res Function(ExchangeRatesListState) then) =
      _$ExchangeRatesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExchangeRatesListStateCopyWithImpl<$Res>
    implements $ExchangeRatesListStateCopyWith<$Res> {
  _$ExchangeRatesListStateCopyWithImpl(this._value, this._then);

  final ExchangeRatesListState _value;
  // ignore: unused_field
  final $Res Function(ExchangeRatesListState) _then;
}

/// @nodoc
abstract class $InitialExchangeRatesListStateCopyWith<$Res> {
  factory $InitialExchangeRatesListStateCopyWith(
          InitialExchangeRatesListState value,
          $Res Function(InitialExchangeRatesListState) then) =
      _$InitialExchangeRatesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialExchangeRatesListStateCopyWithImpl<$Res>
    extends _$ExchangeRatesListStateCopyWithImpl<$Res>
    implements $InitialExchangeRatesListStateCopyWith<$Res> {
  _$InitialExchangeRatesListStateCopyWithImpl(
      InitialExchangeRatesListState _value,
      $Res Function(InitialExchangeRatesListState) _then)
      : super(_value, (v) => _then(v as InitialExchangeRatesListState));

  @override
  InitialExchangeRatesListState get _value =>
      super._value as InitialExchangeRatesListState;
}

/// @nodoc

class _$InitialExchangeRatesListState extends InitialExchangeRatesListState {
  const _$InitialExchangeRatesListState() : super._();

  @override
  String toString() {
    return 'ExchangeRatesListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialExchangeRatesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ExchangeRateModel rates) loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
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
    required TResult Function(InitialExchangeRatesListState value) initial,
    required TResult Function(LoadingExchangeRatesListState value) loading,
    required TResult Function(LoadedExchangeRatesListState value) loaded,
    required TResult Function(FailureExchangeRatesListState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialExchangeRatesListState extends ExchangeRatesListState {
  const factory InitialExchangeRatesListState() =
      _$InitialExchangeRatesListState;
  const InitialExchangeRatesListState._() : super._();
}

/// @nodoc
abstract class $LoadingExchangeRatesListStateCopyWith<$Res> {
  factory $LoadingExchangeRatesListStateCopyWith(
          LoadingExchangeRatesListState value,
          $Res Function(LoadingExchangeRatesListState) then) =
      _$LoadingExchangeRatesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingExchangeRatesListStateCopyWithImpl<$Res>
    extends _$ExchangeRatesListStateCopyWithImpl<$Res>
    implements $LoadingExchangeRatesListStateCopyWith<$Res> {
  _$LoadingExchangeRatesListStateCopyWithImpl(
      LoadingExchangeRatesListState _value,
      $Res Function(LoadingExchangeRatesListState) _then)
      : super(_value, (v) => _then(v as LoadingExchangeRatesListState));

  @override
  LoadingExchangeRatesListState get _value =>
      super._value as LoadingExchangeRatesListState;
}

/// @nodoc

class _$LoadingExchangeRatesListState extends LoadingExchangeRatesListState {
  const _$LoadingExchangeRatesListState() : super._();

  @override
  String toString() {
    return 'ExchangeRatesListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingExchangeRatesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ExchangeRateModel rates) loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialExchangeRatesListState value) initial,
    required TResult Function(LoadingExchangeRatesListState value) loading,
    required TResult Function(LoadedExchangeRatesListState value) loaded,
    required TResult Function(FailureExchangeRatesListState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingExchangeRatesListState extends ExchangeRatesListState {
  const factory LoadingExchangeRatesListState() =
      _$LoadingExchangeRatesListState;
  const LoadingExchangeRatesListState._() : super._();
}

/// @nodoc
abstract class $LoadedExchangeRatesListStateCopyWith<$Res> {
  factory $LoadedExchangeRatesListStateCopyWith(
          LoadedExchangeRatesListState value,
          $Res Function(LoadedExchangeRatesListState) then) =
      _$LoadedExchangeRatesListStateCopyWithImpl<$Res>;
  $Res call({ExchangeRateModel rates});
}

/// @nodoc
class _$LoadedExchangeRatesListStateCopyWithImpl<$Res>
    extends _$ExchangeRatesListStateCopyWithImpl<$Res>
    implements $LoadedExchangeRatesListStateCopyWith<$Res> {
  _$LoadedExchangeRatesListStateCopyWithImpl(
      LoadedExchangeRatesListState _value,
      $Res Function(LoadedExchangeRatesListState) _then)
      : super(_value, (v) => _then(v as LoadedExchangeRatesListState));

  @override
  LoadedExchangeRatesListState get _value =>
      super._value as LoadedExchangeRatesListState;

  @override
  $Res call({
    Object? rates = freezed,
  }) {
    return _then(LoadedExchangeRatesListState(
      rates == freezed
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as ExchangeRateModel,
    ));
  }
}

/// @nodoc

class _$LoadedExchangeRatesListState extends LoadedExchangeRatesListState {
  const _$LoadedExchangeRatesListState(this.rates) : super._();

  @override
  final ExchangeRateModel rates;

  @override
  String toString() {
    return 'ExchangeRatesListState.loaded(rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedExchangeRatesListState &&
            const DeepCollectionEquality().equals(other.rates, rates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rates));

  @JsonKey(ignore: true)
  @override
  $LoadedExchangeRatesListStateCopyWith<LoadedExchangeRatesListState>
      get copyWith => _$LoadedExchangeRatesListStateCopyWithImpl<
          LoadedExchangeRatesListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ExchangeRateModel rates) loaded,
    required TResult Function() failure,
  }) {
    return loaded(rates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
  }) {
    return loaded?.call(rates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialExchangeRatesListState value) initial,
    required TResult Function(LoadingExchangeRatesListState value) loading,
    required TResult Function(LoadedExchangeRatesListState value) loaded,
    required TResult Function(FailureExchangeRatesListState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedExchangeRatesListState extends ExchangeRatesListState {
  const factory LoadedExchangeRatesListState(ExchangeRateModel rates) =
      _$LoadedExchangeRatesListState;
  const LoadedExchangeRatesListState._() : super._();

  ExchangeRateModel get rates;
  @JsonKey(ignore: true)
  $LoadedExchangeRatesListStateCopyWith<LoadedExchangeRatesListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureExchangeRatesListStateCopyWith<$Res> {
  factory $FailureExchangeRatesListStateCopyWith(
          FailureExchangeRatesListState value,
          $Res Function(FailureExchangeRatesListState) then) =
      _$FailureExchangeRatesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureExchangeRatesListStateCopyWithImpl<$Res>
    extends _$ExchangeRatesListStateCopyWithImpl<$Res>
    implements $FailureExchangeRatesListStateCopyWith<$Res> {
  _$FailureExchangeRatesListStateCopyWithImpl(
      FailureExchangeRatesListState _value,
      $Res Function(FailureExchangeRatesListState) _then)
      : super(_value, (v) => _then(v as FailureExchangeRatesListState));

  @override
  FailureExchangeRatesListState get _value =>
      super._value as FailureExchangeRatesListState;
}

/// @nodoc

class _$FailureExchangeRatesListState extends FailureExchangeRatesListState {
  const _$FailureExchangeRatesListState() : super._();

  @override
  String toString() {
    return 'ExchangeRatesListState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureExchangeRatesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ExchangeRateModel rates) loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ExchangeRateModel rates)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialExchangeRatesListState value) initial,
    required TResult Function(LoadingExchangeRatesListState value) loading,
    required TResult Function(LoadedExchangeRatesListState value) loaded,
    required TResult Function(FailureExchangeRatesListState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialExchangeRatesListState value)? initial,
    TResult Function(LoadingExchangeRatesListState value)? loading,
    TResult Function(LoadedExchangeRatesListState value)? loaded,
    TResult Function(FailureExchangeRatesListState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureExchangeRatesListState extends ExchangeRatesListState {
  const factory FailureExchangeRatesListState() =
      _$FailureExchangeRatesListState;
  const FailureExchangeRatesListState._() : super._();
}
