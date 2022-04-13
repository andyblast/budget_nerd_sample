// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallets_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletListEventTearOff {
  const _$WalletListEventTearOff();

  WatchAllWalletsEvent watch() {
    return const WatchAllWalletsEvent();
  }

  WalletListStreamSyncedEvent streamSynced(List<WalletModel> walletsList) {
    return WalletListStreamSyncedEvent(
      walletsList,
    );
  }
}

/// @nodoc
const $WalletListEvent = _$WalletListEventTearOff();

/// @nodoc
mixin _$WalletListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(List<WalletModel> walletsList) streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(List<WalletModel> walletsList)? streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(List<WalletModel> walletsList)? streamSynced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllWalletsEvent value) watch,
    required TResult Function(WalletListStreamSyncedEvent value) streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllWalletsEvent value)? watch,
    TResult Function(WalletListStreamSyncedEvent value)? streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllWalletsEvent value)? watch,
    TResult Function(WalletListStreamSyncedEvent value)? streamSynced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletListEventCopyWith<$Res> {
  factory $WalletListEventCopyWith(
          WalletListEvent value, $Res Function(WalletListEvent) then) =
      _$WalletListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletListEventCopyWithImpl<$Res>
    implements $WalletListEventCopyWith<$Res> {
  _$WalletListEventCopyWithImpl(this._value, this._then);

  final WalletListEvent _value;
  // ignore: unused_field
  final $Res Function(WalletListEvent) _then;
}

/// @nodoc
abstract class $WatchAllWalletsEventCopyWith<$Res> {
  factory $WatchAllWalletsEventCopyWith(WatchAllWalletsEvent value,
          $Res Function(WatchAllWalletsEvent) then) =
      _$WatchAllWalletsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllWalletsEventCopyWithImpl<$Res>
    extends _$WalletListEventCopyWithImpl<$Res>
    implements $WatchAllWalletsEventCopyWith<$Res> {
  _$WatchAllWalletsEventCopyWithImpl(
      WatchAllWalletsEvent _value, $Res Function(WatchAllWalletsEvent) _then)
      : super(_value, (v) => _then(v as WatchAllWalletsEvent));

  @override
  WatchAllWalletsEvent get _value => super._value as WatchAllWalletsEvent;
}

/// @nodoc

class _$WatchAllWalletsEvent extends WatchAllWalletsEvent {
  const _$WatchAllWalletsEvent() : super._();

  @override
  String toString() {
    return 'WalletListEvent.watch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchAllWalletsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(List<WalletModel> walletsList) streamSynced,
  }) {
    return watch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(List<WalletModel> walletsList)? streamSynced,
  }) {
    return watch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(List<WalletModel> walletsList)? streamSynced,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllWalletsEvent value) watch,
    required TResult Function(WalletListStreamSyncedEvent value) streamSynced,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllWalletsEvent value)? watch,
    TResult Function(WalletListStreamSyncedEvent value)? streamSynced,
  }) {
    return watch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllWalletsEvent value)? watch,
    TResult Function(WalletListStreamSyncedEvent value)? streamSynced,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class WatchAllWalletsEvent extends WalletListEvent {
  const factory WatchAllWalletsEvent() = _$WatchAllWalletsEvent;
  const WatchAllWalletsEvent._() : super._();
}

/// @nodoc
abstract class $WalletListStreamSyncedEventCopyWith<$Res> {
  factory $WalletListStreamSyncedEventCopyWith(
          WalletListStreamSyncedEvent value,
          $Res Function(WalletListStreamSyncedEvent) then) =
      _$WalletListStreamSyncedEventCopyWithImpl<$Res>;
  $Res call({List<WalletModel> walletsList});
}

/// @nodoc
class _$WalletListStreamSyncedEventCopyWithImpl<$Res>
    extends _$WalletListEventCopyWithImpl<$Res>
    implements $WalletListStreamSyncedEventCopyWith<$Res> {
  _$WalletListStreamSyncedEventCopyWithImpl(WalletListStreamSyncedEvent _value,
      $Res Function(WalletListStreamSyncedEvent) _then)
      : super(_value, (v) => _then(v as WalletListStreamSyncedEvent));

  @override
  WalletListStreamSyncedEvent get _value =>
      super._value as WalletListStreamSyncedEvent;

  @override
  $Res call({
    Object? walletsList = freezed,
  }) {
    return _then(WalletListStreamSyncedEvent(
      walletsList == freezed
          ? _value.walletsList
          : walletsList // ignore: cast_nullable_to_non_nullable
              as List<WalletModel>,
    ));
  }
}

/// @nodoc

class _$WalletListStreamSyncedEvent extends WalletListStreamSyncedEvent {
  const _$WalletListStreamSyncedEvent(this.walletsList) : super._();

  @override
  final List<WalletModel> walletsList;

  @override
  String toString() {
    return 'WalletListEvent.streamSynced(walletsList: $walletsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletListStreamSyncedEvent &&
            const DeepCollectionEquality()
                .equals(other.walletsList, walletsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletsList));

  @JsonKey(ignore: true)
  @override
  $WalletListStreamSyncedEventCopyWith<WalletListStreamSyncedEvent>
      get copyWith => _$WalletListStreamSyncedEventCopyWithImpl<
          WalletListStreamSyncedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(List<WalletModel> walletsList) streamSynced,
  }) {
    return streamSynced(walletsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(List<WalletModel> walletsList)? streamSynced,
  }) {
    return streamSynced?.call(walletsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(List<WalletModel> walletsList)? streamSynced,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(walletsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllWalletsEvent value) watch,
    required TResult Function(WalletListStreamSyncedEvent value) streamSynced,
  }) {
    return streamSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllWalletsEvent value)? watch,
    TResult Function(WalletListStreamSyncedEvent value)? streamSynced,
  }) {
    return streamSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllWalletsEvent value)? watch,
    TResult Function(WalletListStreamSyncedEvent value)? streamSynced,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(this);
    }
    return orElse();
  }
}

abstract class WalletListStreamSyncedEvent extends WalletListEvent {
  const factory WalletListStreamSyncedEvent(List<WalletModel> walletsList) =
      _$WalletListStreamSyncedEvent;
  const WalletListStreamSyncedEvent._() : super._();

  List<WalletModel> get walletsList;
  @JsonKey(ignore: true)
  $WalletListStreamSyncedEventCopyWith<WalletListStreamSyncedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WalletListStateTearOff {
  const _$WalletListStateTearOff();

  EmptyWalletListState empty() {
    return const EmptyWalletListState();
  }

  LoadingWalletListState loading() {
    return const LoadingWalletListState();
  }

  LoadedWalletListState loaded(List<WalletModel> walletsList) {
    return LoadedWalletListState(
      walletsList,
    );
  }

  FailureWalletListState failure(String message) {
    return FailureWalletListState(
      message,
    );
  }
}

/// @nodoc
const $WalletListState = _$WalletListStateTearOff();

/// @nodoc
mixin _$WalletListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<WalletModel> walletsList) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyWalletListState value) empty,
    required TResult Function(LoadingWalletListState value) loading,
    required TResult Function(LoadedWalletListState value) loaded,
    required TResult Function(FailureWalletListState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletListStateCopyWith<$Res> {
  factory $WalletListStateCopyWith(
          WalletListState value, $Res Function(WalletListState) then) =
      _$WalletListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletListStateCopyWithImpl<$Res>
    implements $WalletListStateCopyWith<$Res> {
  _$WalletListStateCopyWithImpl(this._value, this._then);

  final WalletListState _value;
  // ignore: unused_field
  final $Res Function(WalletListState) _then;
}

/// @nodoc
abstract class $EmptyWalletListStateCopyWith<$Res> {
  factory $EmptyWalletListStateCopyWith(EmptyWalletListState value,
          $Res Function(EmptyWalletListState) then) =
      _$EmptyWalletListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyWalletListStateCopyWithImpl<$Res>
    extends _$WalletListStateCopyWithImpl<$Res>
    implements $EmptyWalletListStateCopyWith<$Res> {
  _$EmptyWalletListStateCopyWithImpl(
      EmptyWalletListState _value, $Res Function(EmptyWalletListState) _then)
      : super(_value, (v) => _then(v as EmptyWalletListState));

  @override
  EmptyWalletListState get _value => super._value as EmptyWalletListState;
}

/// @nodoc

class _$EmptyWalletListState extends EmptyWalletListState {
  const _$EmptyWalletListState() : super._();

  @override
  String toString() {
    return 'WalletListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyWalletListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<WalletModel> walletsList) loaded,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyWalletListState value) empty,
    required TResult Function(LoadingWalletListState value) loading,
    required TResult Function(LoadedWalletListState value) loaded,
    required TResult Function(FailureWalletListState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyWalletListState extends WalletListState {
  const factory EmptyWalletListState() = _$EmptyWalletListState;
  const EmptyWalletListState._() : super._();
}

/// @nodoc
abstract class $LoadingWalletListStateCopyWith<$Res> {
  factory $LoadingWalletListStateCopyWith(LoadingWalletListState value,
          $Res Function(LoadingWalletListState) then) =
      _$LoadingWalletListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingWalletListStateCopyWithImpl<$Res>
    extends _$WalletListStateCopyWithImpl<$Res>
    implements $LoadingWalletListStateCopyWith<$Res> {
  _$LoadingWalletListStateCopyWithImpl(LoadingWalletListState _value,
      $Res Function(LoadingWalletListState) _then)
      : super(_value, (v) => _then(v as LoadingWalletListState));

  @override
  LoadingWalletListState get _value => super._value as LoadingWalletListState;
}

/// @nodoc

class _$LoadingWalletListState extends LoadingWalletListState {
  const _$LoadingWalletListState() : super._();

  @override
  String toString() {
    return 'WalletListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingWalletListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<WalletModel> walletsList) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
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
    required TResult Function(EmptyWalletListState value) empty,
    required TResult Function(LoadingWalletListState value) loading,
    required TResult Function(LoadedWalletListState value) loaded,
    required TResult Function(FailureWalletListState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingWalletListState extends WalletListState {
  const factory LoadingWalletListState() = _$LoadingWalletListState;
  const LoadingWalletListState._() : super._();
}

/// @nodoc
abstract class $LoadedWalletListStateCopyWith<$Res> {
  factory $LoadedWalletListStateCopyWith(LoadedWalletListState value,
          $Res Function(LoadedWalletListState) then) =
      _$LoadedWalletListStateCopyWithImpl<$Res>;
  $Res call({List<WalletModel> walletsList});
}

/// @nodoc
class _$LoadedWalletListStateCopyWithImpl<$Res>
    extends _$WalletListStateCopyWithImpl<$Res>
    implements $LoadedWalletListStateCopyWith<$Res> {
  _$LoadedWalletListStateCopyWithImpl(
      LoadedWalletListState _value, $Res Function(LoadedWalletListState) _then)
      : super(_value, (v) => _then(v as LoadedWalletListState));

  @override
  LoadedWalletListState get _value => super._value as LoadedWalletListState;

  @override
  $Res call({
    Object? walletsList = freezed,
  }) {
    return _then(LoadedWalletListState(
      walletsList == freezed
          ? _value.walletsList
          : walletsList // ignore: cast_nullable_to_non_nullable
              as List<WalletModel>,
    ));
  }
}

/// @nodoc

class _$LoadedWalletListState extends LoadedWalletListState {
  const _$LoadedWalletListState(this.walletsList) : super._();

  @override
  final List<WalletModel> walletsList;

  @override
  String toString() {
    return 'WalletListState.loaded(walletsList: $walletsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedWalletListState &&
            const DeepCollectionEquality()
                .equals(other.walletsList, walletsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletsList));

  @JsonKey(ignore: true)
  @override
  $LoadedWalletListStateCopyWith<LoadedWalletListState> get copyWith =>
      _$LoadedWalletListStateCopyWithImpl<LoadedWalletListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<WalletModel> walletsList) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(walletsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(walletsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(walletsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyWalletListState value) empty,
    required TResult Function(LoadingWalletListState value) loading,
    required TResult Function(LoadedWalletListState value) loaded,
    required TResult Function(FailureWalletListState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedWalletListState extends WalletListState {
  const factory LoadedWalletListState(List<WalletModel> walletsList) =
      _$LoadedWalletListState;
  const LoadedWalletListState._() : super._();

  List<WalletModel> get walletsList;
  @JsonKey(ignore: true)
  $LoadedWalletListStateCopyWith<LoadedWalletListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureWalletListStateCopyWith<$Res> {
  factory $FailureWalletListStateCopyWith(FailureWalletListState value,
          $Res Function(FailureWalletListState) then) =
      _$FailureWalletListStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureWalletListStateCopyWithImpl<$Res>
    extends _$WalletListStateCopyWithImpl<$Res>
    implements $FailureWalletListStateCopyWith<$Res> {
  _$FailureWalletListStateCopyWithImpl(FailureWalletListState _value,
      $Res Function(FailureWalletListState) _then)
      : super(_value, (v) => _then(v as FailureWalletListState));

  @override
  FailureWalletListState get _value => super._value as FailureWalletListState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureWalletListState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureWalletListState extends FailureWalletListState {
  const _$FailureWalletListState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'WalletListState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureWalletListState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureWalletListStateCopyWith<FailureWalletListState> get copyWith =>
      _$FailureWalletListStateCopyWithImpl<FailureWalletListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<WalletModel> walletsList) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<WalletModel> walletsList)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyWalletListState value) empty,
    required TResult Function(LoadingWalletListState value) loading,
    required TResult Function(LoadedWalletListState value) loaded,
    required TResult Function(FailureWalletListState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyWalletListState value)? empty,
    TResult Function(LoadingWalletListState value)? loading,
    TResult Function(LoadedWalletListState value)? loaded,
    TResult Function(FailureWalletListState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureWalletListState extends WalletListState {
  const factory FailureWalletListState(String message) =
      _$FailureWalletListState;
  const FailureWalletListState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $FailureWalletListStateCopyWith<FailureWalletListState> get copyWith =>
      throw _privateConstructorUsedError;
}
