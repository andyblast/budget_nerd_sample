// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectedWalletEventTearOff {
  const _$SelectedWalletEventTearOff();

  WatchSelectedWalletEvent watch() {
    return const WatchSelectedWalletEvent();
  }

  SelectedWalletStreamSyncedEvent streamSynced(
      WalletModel selectedWallet, DateTime? selectedDate) {
    return SelectedWalletStreamSyncedEvent(
      selectedWallet,
      selectedDate,
    );
  }

  AllWalletStreamSyncedEvent allWalletsStreamSynced(
      List<WalletModel> wallets, DateTime? selectedDate) {
    return AllWalletStreamSyncedEvent(
      wallets,
      selectedDate,
    );
  }

  SetEmptySelectedWalletEvent setEmpty() {
    return const SetEmptySelectedWalletEvent();
  }

  WatchAllWalletsWalletEvent watchAllWallets() {
    return const WatchAllWalletsWalletEvent();
  }

  UpdateSelectedWalletEvent update(WalletModel selectedWallet) {
    return UpdateSelectedWalletEvent(
      selectedWallet,
    );
  }
}

/// @nodoc
const $SelectedWalletEvent = _$SelectedWalletEventTearOff();

/// @nodoc
mixin _$SelectedWalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedWalletEventCopyWith<$Res> {
  factory $SelectedWalletEventCopyWith(
          SelectedWalletEvent value, $Res Function(SelectedWalletEvent) then) =
      _$SelectedWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedWalletEventCopyWithImpl<$Res>
    implements $SelectedWalletEventCopyWith<$Res> {
  _$SelectedWalletEventCopyWithImpl(this._value, this._then);

  final SelectedWalletEvent _value;
  // ignore: unused_field
  final $Res Function(SelectedWalletEvent) _then;
}

/// @nodoc
abstract class $WatchSelectedWalletEventCopyWith<$Res> {
  factory $WatchSelectedWalletEventCopyWith(WatchSelectedWalletEvent value,
          $Res Function(WatchSelectedWalletEvent) then) =
      _$WatchSelectedWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchSelectedWalletEventCopyWithImpl<$Res>
    extends _$SelectedWalletEventCopyWithImpl<$Res>
    implements $WatchSelectedWalletEventCopyWith<$Res> {
  _$WatchSelectedWalletEventCopyWithImpl(WatchSelectedWalletEvent _value,
      $Res Function(WatchSelectedWalletEvent) _then)
      : super(_value, (v) => _then(v as WatchSelectedWalletEvent));

  @override
  WatchSelectedWalletEvent get _value =>
      super._value as WatchSelectedWalletEvent;
}

/// @nodoc

class _$WatchSelectedWalletEvent extends WatchSelectedWalletEvent {
  const _$WatchSelectedWalletEvent() : super._();

  @override
  String toString() {
    return 'SelectedWalletEvent.watch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchSelectedWalletEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) {
    return watch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) {
    return watch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
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
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) {
    return watch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class WatchSelectedWalletEvent extends SelectedWalletEvent {
  const factory WatchSelectedWalletEvent() = _$WatchSelectedWalletEvent;
  const WatchSelectedWalletEvent._() : super._();
}

/// @nodoc
abstract class $SelectedWalletStreamSyncedEventCopyWith<$Res> {
  factory $SelectedWalletStreamSyncedEventCopyWith(
          SelectedWalletStreamSyncedEvent value,
          $Res Function(SelectedWalletStreamSyncedEvent) then) =
      _$SelectedWalletStreamSyncedEventCopyWithImpl<$Res>;
  $Res call({WalletModel selectedWallet, DateTime? selectedDate});
}

/// @nodoc
class _$SelectedWalletStreamSyncedEventCopyWithImpl<$Res>
    extends _$SelectedWalletEventCopyWithImpl<$Res>
    implements $SelectedWalletStreamSyncedEventCopyWith<$Res> {
  _$SelectedWalletStreamSyncedEventCopyWithImpl(
      SelectedWalletStreamSyncedEvent _value,
      $Res Function(SelectedWalletStreamSyncedEvent) _then)
      : super(_value, (v) => _then(v as SelectedWalletStreamSyncedEvent));

  @override
  SelectedWalletStreamSyncedEvent get _value =>
      super._value as SelectedWalletStreamSyncedEvent;

  @override
  $Res call({
    Object? selectedWallet = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(SelectedWalletStreamSyncedEvent(
      selectedWallet == freezed
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
      selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SelectedWalletStreamSyncedEvent
    extends SelectedWalletStreamSyncedEvent {
  const _$SelectedWalletStreamSyncedEvent(
      this.selectedWallet, this.selectedDate)
      : super._();

  @override
  final WalletModel selectedWallet;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'SelectedWalletEvent.streamSynced(selectedWallet: $selectedWallet, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectedWalletStreamSyncedEvent &&
            const DeepCollectionEquality()
                .equals(other.selectedWallet, selectedWallet) &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedWallet),
      const DeepCollectionEquality().hash(selectedDate));

  @JsonKey(ignore: true)
  @override
  $SelectedWalletStreamSyncedEventCopyWith<SelectedWalletStreamSyncedEvent>
      get copyWith => _$SelectedWalletStreamSyncedEventCopyWithImpl<
          SelectedWalletStreamSyncedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) {
    return streamSynced(selectedWallet, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) {
    return streamSynced?.call(selectedWallet, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(selectedWallet, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) {
    return streamSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) {
    return streamSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(this);
    }
    return orElse();
  }
}

abstract class SelectedWalletStreamSyncedEvent extends SelectedWalletEvent {
  const factory SelectedWalletStreamSyncedEvent(
          WalletModel selectedWallet, DateTime? selectedDate) =
      _$SelectedWalletStreamSyncedEvent;
  const SelectedWalletStreamSyncedEvent._() : super._();

  WalletModel get selectedWallet;
  DateTime? get selectedDate;
  @JsonKey(ignore: true)
  $SelectedWalletStreamSyncedEventCopyWith<SelectedWalletStreamSyncedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllWalletStreamSyncedEventCopyWith<$Res> {
  factory $AllWalletStreamSyncedEventCopyWith(AllWalletStreamSyncedEvent value,
          $Res Function(AllWalletStreamSyncedEvent) then) =
      _$AllWalletStreamSyncedEventCopyWithImpl<$Res>;
  $Res call({List<WalletModel> wallets, DateTime? selectedDate});
}

/// @nodoc
class _$AllWalletStreamSyncedEventCopyWithImpl<$Res>
    extends _$SelectedWalletEventCopyWithImpl<$Res>
    implements $AllWalletStreamSyncedEventCopyWith<$Res> {
  _$AllWalletStreamSyncedEventCopyWithImpl(AllWalletStreamSyncedEvent _value,
      $Res Function(AllWalletStreamSyncedEvent) _then)
      : super(_value, (v) => _then(v as AllWalletStreamSyncedEvent));

  @override
  AllWalletStreamSyncedEvent get _value =>
      super._value as AllWalletStreamSyncedEvent;

  @override
  $Res call({
    Object? wallets = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(AllWalletStreamSyncedEvent(
      wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletModel>,
      selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$AllWalletStreamSyncedEvent extends AllWalletStreamSyncedEvent {
  const _$AllWalletStreamSyncedEvent(this.wallets, this.selectedDate)
      : super._();

  @override
  final List<WalletModel> wallets;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'SelectedWalletEvent.allWalletsStreamSynced(wallets: $wallets, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllWalletStreamSyncedEvent &&
            const DeepCollectionEquality().equals(other.wallets, wallets) &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wallets),
      const DeepCollectionEquality().hash(selectedDate));

  @JsonKey(ignore: true)
  @override
  $AllWalletStreamSyncedEventCopyWith<AllWalletStreamSyncedEvent>
      get copyWith =>
          _$AllWalletStreamSyncedEventCopyWithImpl<AllWalletStreamSyncedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) {
    return allWalletsStreamSynced(wallets, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) {
    return allWalletsStreamSynced?.call(wallets, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
    required TResult orElse(),
  }) {
    if (allWalletsStreamSynced != null) {
      return allWalletsStreamSynced(wallets, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) {
    return allWalletsStreamSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) {
    return allWalletsStreamSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) {
    if (allWalletsStreamSynced != null) {
      return allWalletsStreamSynced(this);
    }
    return orElse();
  }
}

abstract class AllWalletStreamSyncedEvent extends SelectedWalletEvent {
  const factory AllWalletStreamSyncedEvent(
          List<WalletModel> wallets, DateTime? selectedDate) =
      _$AllWalletStreamSyncedEvent;
  const AllWalletStreamSyncedEvent._() : super._();

  List<WalletModel> get wallets;
  DateTime? get selectedDate;
  @JsonKey(ignore: true)
  $AllWalletStreamSyncedEventCopyWith<AllWalletStreamSyncedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEmptySelectedWalletEventCopyWith<$Res> {
  factory $SetEmptySelectedWalletEventCopyWith(
          SetEmptySelectedWalletEvent value,
          $Res Function(SetEmptySelectedWalletEvent) then) =
      _$SetEmptySelectedWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetEmptySelectedWalletEventCopyWithImpl<$Res>
    extends _$SelectedWalletEventCopyWithImpl<$Res>
    implements $SetEmptySelectedWalletEventCopyWith<$Res> {
  _$SetEmptySelectedWalletEventCopyWithImpl(SetEmptySelectedWalletEvent _value,
      $Res Function(SetEmptySelectedWalletEvent) _then)
      : super(_value, (v) => _then(v as SetEmptySelectedWalletEvent));

  @override
  SetEmptySelectedWalletEvent get _value =>
      super._value as SetEmptySelectedWalletEvent;
}

/// @nodoc

class _$SetEmptySelectedWalletEvent extends SetEmptySelectedWalletEvent {
  const _$SetEmptySelectedWalletEvent() : super._();

  @override
  String toString() {
    return 'SelectedWalletEvent.setEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEmptySelectedWalletEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) {
    return setEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) {
    return setEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
    required TResult orElse(),
  }) {
    if (setEmpty != null) {
      return setEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) {
    return setEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) {
    return setEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) {
    if (setEmpty != null) {
      return setEmpty(this);
    }
    return orElse();
  }
}

abstract class SetEmptySelectedWalletEvent extends SelectedWalletEvent {
  const factory SetEmptySelectedWalletEvent() = _$SetEmptySelectedWalletEvent;
  const SetEmptySelectedWalletEvent._() : super._();
}

/// @nodoc
abstract class $WatchAllWalletsWalletEventCopyWith<$Res> {
  factory $WatchAllWalletsWalletEventCopyWith(WatchAllWalletsWalletEvent value,
          $Res Function(WatchAllWalletsWalletEvent) then) =
      _$WatchAllWalletsWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllWalletsWalletEventCopyWithImpl<$Res>
    extends _$SelectedWalletEventCopyWithImpl<$Res>
    implements $WatchAllWalletsWalletEventCopyWith<$Res> {
  _$WatchAllWalletsWalletEventCopyWithImpl(WatchAllWalletsWalletEvent _value,
      $Res Function(WatchAllWalletsWalletEvent) _then)
      : super(_value, (v) => _then(v as WatchAllWalletsWalletEvent));

  @override
  WatchAllWalletsWalletEvent get _value =>
      super._value as WatchAllWalletsWalletEvent;
}

/// @nodoc

class _$WatchAllWalletsWalletEvent extends WatchAllWalletsWalletEvent {
  const _$WatchAllWalletsWalletEvent() : super._();

  @override
  String toString() {
    return 'SelectedWalletEvent.watchAllWallets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchAllWalletsWalletEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) {
    return watchAllWallets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) {
    return watchAllWallets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
    required TResult orElse(),
  }) {
    if (watchAllWallets != null) {
      return watchAllWallets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) {
    return watchAllWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) {
    return watchAllWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) {
    if (watchAllWallets != null) {
      return watchAllWallets(this);
    }
    return orElse();
  }
}

abstract class WatchAllWalletsWalletEvent extends SelectedWalletEvent {
  const factory WatchAllWalletsWalletEvent() = _$WatchAllWalletsWalletEvent;
  const WatchAllWalletsWalletEvent._() : super._();
}

/// @nodoc
abstract class $UpdateSelectedWalletEventCopyWith<$Res> {
  factory $UpdateSelectedWalletEventCopyWith(UpdateSelectedWalletEvent value,
          $Res Function(UpdateSelectedWalletEvent) then) =
      _$UpdateSelectedWalletEventCopyWithImpl<$Res>;
  $Res call({WalletModel selectedWallet});
}

/// @nodoc
class _$UpdateSelectedWalletEventCopyWithImpl<$Res>
    extends _$SelectedWalletEventCopyWithImpl<$Res>
    implements $UpdateSelectedWalletEventCopyWith<$Res> {
  _$UpdateSelectedWalletEventCopyWithImpl(UpdateSelectedWalletEvent _value,
      $Res Function(UpdateSelectedWalletEvent) _then)
      : super(_value, (v) => _then(v as UpdateSelectedWalletEvent));

  @override
  UpdateSelectedWalletEvent get _value =>
      super._value as UpdateSelectedWalletEvent;

  @override
  $Res call({
    Object? selectedWallet = freezed,
  }) {
    return _then(UpdateSelectedWalletEvent(
      selectedWallet == freezed
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedWalletEvent extends UpdateSelectedWalletEvent {
  const _$UpdateSelectedWalletEvent(this.selectedWallet) : super._();

  @override
  final WalletModel selectedWallet;

  @override
  String toString() {
    return 'SelectedWalletEvent.update(selectedWallet: $selectedWallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSelectedWalletEvent &&
            const DeepCollectionEquality()
                .equals(other.selectedWallet, selectedWallet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedWallet));

  @JsonKey(ignore: true)
  @override
  $UpdateSelectedWalletEventCopyWith<UpdateSelectedWalletEvent> get copyWith =>
      _$UpdateSelectedWalletEventCopyWithImpl<UpdateSelectedWalletEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(
            WalletModel selectedWallet, DateTime? selectedDate)
        streamSynced,
    required TResult Function(List<WalletModel> wallets, DateTime? selectedDate)
        allWalletsStreamSynced,
    required TResult Function() setEmpty,
    required TResult Function() watchAllWallets,
    required TResult Function(WalletModel selectedWallet) update,
  }) {
    return update(selectedWallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
  }) {
    return update?.call(selectedWallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(WalletModel selectedWallet, DateTime? selectedDate)?
        streamSynced,
    TResult Function(List<WalletModel> wallets, DateTime? selectedDate)?
        allWalletsStreamSynced,
    TResult Function()? setEmpty,
    TResult Function()? watchAllWallets,
    TResult Function(WalletModel selectedWallet)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(selectedWallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchSelectedWalletEvent value) watch,
    required TResult Function(SelectedWalletStreamSyncedEvent value)
        streamSynced,
    required TResult Function(AllWalletStreamSyncedEvent value)
        allWalletsStreamSynced,
    required TResult Function(SetEmptySelectedWalletEvent value) setEmpty,
    required TResult Function(WatchAllWalletsWalletEvent value) watchAllWallets,
    required TResult Function(UpdateSelectedWalletEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchSelectedWalletEvent value)? watch,
    TResult Function(SelectedWalletStreamSyncedEvent value)? streamSynced,
    TResult Function(AllWalletStreamSyncedEvent value)? allWalletsStreamSynced,
    TResult Function(SetEmptySelectedWalletEvent value)? setEmpty,
    TResult Function(WatchAllWalletsWalletEvent value)? watchAllWallets,
    TResult Function(UpdateSelectedWalletEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedWalletEvent extends SelectedWalletEvent {
  const factory UpdateSelectedWalletEvent(WalletModel selectedWallet) =
      _$UpdateSelectedWalletEvent;
  const UpdateSelectedWalletEvent._() : super._();

  WalletModel get selectedWallet;
  @JsonKey(ignore: true)
  $UpdateSelectedWalletEventCopyWith<UpdateSelectedWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SelectedWalletStateTearOff {
  const _$SelectedWalletStateTearOff();

  EmptySelectedWalletState empty() {
    return const EmptySelectedWalletState();
  }

  LoadingSelectedWalletState loading() {
    return const LoadingSelectedWalletState();
  }

  LoadedSelectedWalletState loaded(
      WalletModel selectedWallet,
      List<TransactionModel> transactions,
      Map<String, List<TransactionModel>> groupedTransactions) {
    return LoadedSelectedWalletState(
      selectedWallet,
      transactions,
      groupedTransactions,
    );
  }

  LoadedAllWalletsWalletState loadedAllWallets(
      List<TransactionModel> transactions,
      Map<String, List<TransactionModel>> groupedTransactions) {
    return LoadedAllWalletsWalletState(
      transactions,
      groupedTransactions,
    );
  }

  FailureSelectedWalletState failure(String message) {
    return FailureSelectedWalletState(
      message,
    );
  }
}

/// @nodoc
const $SelectedWalletState = _$SelectedWalletStateTearOff();

/// @nodoc
mixin _$SelectedWalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loaded,
    required TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loadedAllWallets,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySelectedWalletState value) empty,
    required TResult Function(LoadingSelectedWalletState value) loading,
    required TResult Function(LoadedSelectedWalletState value) loaded,
    required TResult Function(LoadedAllWalletsWalletState value)
        loadedAllWallets,
    required TResult Function(FailureSelectedWalletState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedWalletStateCopyWith<$Res> {
  factory $SelectedWalletStateCopyWith(
          SelectedWalletState value, $Res Function(SelectedWalletState) then) =
      _$SelectedWalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedWalletStateCopyWithImpl<$Res>
    implements $SelectedWalletStateCopyWith<$Res> {
  _$SelectedWalletStateCopyWithImpl(this._value, this._then);

  final SelectedWalletState _value;
  // ignore: unused_field
  final $Res Function(SelectedWalletState) _then;
}

/// @nodoc
abstract class $EmptySelectedWalletStateCopyWith<$Res> {
  factory $EmptySelectedWalletStateCopyWith(EmptySelectedWalletState value,
          $Res Function(EmptySelectedWalletState) then) =
      _$EmptySelectedWalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptySelectedWalletStateCopyWithImpl<$Res>
    extends _$SelectedWalletStateCopyWithImpl<$Res>
    implements $EmptySelectedWalletStateCopyWith<$Res> {
  _$EmptySelectedWalletStateCopyWithImpl(EmptySelectedWalletState _value,
      $Res Function(EmptySelectedWalletState) _then)
      : super(_value, (v) => _then(v as EmptySelectedWalletState));

  @override
  EmptySelectedWalletState get _value =>
      super._value as EmptySelectedWalletState;
}

/// @nodoc

class _$EmptySelectedWalletState extends EmptySelectedWalletState {
  const _$EmptySelectedWalletState() : super._();

  @override
  String toString() {
    return 'SelectedWalletState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptySelectedWalletState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loaded,
    required TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loadedAllWallets,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
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
    required TResult Function(EmptySelectedWalletState value) empty,
    required TResult Function(LoadingSelectedWalletState value) loading,
    required TResult Function(LoadedSelectedWalletState value) loaded,
    required TResult Function(LoadedAllWalletsWalletState value)
        loadedAllWallets,
    required TResult Function(FailureSelectedWalletState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptySelectedWalletState extends SelectedWalletState {
  const factory EmptySelectedWalletState() = _$EmptySelectedWalletState;
  const EmptySelectedWalletState._() : super._();
}

/// @nodoc
abstract class $LoadingSelectedWalletStateCopyWith<$Res> {
  factory $LoadingSelectedWalletStateCopyWith(LoadingSelectedWalletState value,
          $Res Function(LoadingSelectedWalletState) then) =
      _$LoadingSelectedWalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingSelectedWalletStateCopyWithImpl<$Res>
    extends _$SelectedWalletStateCopyWithImpl<$Res>
    implements $LoadingSelectedWalletStateCopyWith<$Res> {
  _$LoadingSelectedWalletStateCopyWithImpl(LoadingSelectedWalletState _value,
      $Res Function(LoadingSelectedWalletState) _then)
      : super(_value, (v) => _then(v as LoadingSelectedWalletState));

  @override
  LoadingSelectedWalletState get _value =>
      super._value as LoadingSelectedWalletState;
}

/// @nodoc

class _$LoadingSelectedWalletState extends LoadingSelectedWalletState {
  const _$LoadingSelectedWalletState() : super._();

  @override
  String toString() {
    return 'SelectedWalletState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingSelectedWalletState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loaded,
    required TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loadedAllWallets,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
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
    required TResult Function(EmptySelectedWalletState value) empty,
    required TResult Function(LoadingSelectedWalletState value) loading,
    required TResult Function(LoadedSelectedWalletState value) loaded,
    required TResult Function(LoadedAllWalletsWalletState value)
        loadedAllWallets,
    required TResult Function(FailureSelectedWalletState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSelectedWalletState extends SelectedWalletState {
  const factory LoadingSelectedWalletState() = _$LoadingSelectedWalletState;
  const LoadingSelectedWalletState._() : super._();
}

/// @nodoc
abstract class $LoadedSelectedWalletStateCopyWith<$Res> {
  factory $LoadedSelectedWalletStateCopyWith(LoadedSelectedWalletState value,
          $Res Function(LoadedSelectedWalletState) then) =
      _$LoadedSelectedWalletStateCopyWithImpl<$Res>;
  $Res call(
      {WalletModel selectedWallet,
      List<TransactionModel> transactions,
      Map<String, List<TransactionModel>> groupedTransactions});
}

/// @nodoc
class _$LoadedSelectedWalletStateCopyWithImpl<$Res>
    extends _$SelectedWalletStateCopyWithImpl<$Res>
    implements $LoadedSelectedWalletStateCopyWith<$Res> {
  _$LoadedSelectedWalletStateCopyWithImpl(LoadedSelectedWalletState _value,
      $Res Function(LoadedSelectedWalletState) _then)
      : super(_value, (v) => _then(v as LoadedSelectedWalletState));

  @override
  LoadedSelectedWalletState get _value =>
      super._value as LoadedSelectedWalletState;

  @override
  $Res call({
    Object? selectedWallet = freezed,
    Object? transactions = freezed,
    Object? groupedTransactions = freezed,
  }) {
    return _then(LoadedSelectedWalletState(
      selectedWallet == freezed
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      groupedTransactions == freezed
          ? _value.groupedTransactions
          : groupedTransactions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TransactionModel>>,
    ));
  }
}

/// @nodoc

class _$LoadedSelectedWalletState extends LoadedSelectedWalletState {
  const _$LoadedSelectedWalletState(
      this.selectedWallet, this.transactions, this.groupedTransactions)
      : super._();

  @override
  final WalletModel selectedWallet;
  @override
  final List<TransactionModel> transactions;
  @override
  final Map<String, List<TransactionModel>> groupedTransactions;

  @override
  String toString() {
    return 'SelectedWalletState.loaded(selectedWallet: $selectedWallet, transactions: $transactions, groupedTransactions: $groupedTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedSelectedWalletState &&
            const DeepCollectionEquality()
                .equals(other.selectedWallet, selectedWallet) &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions) &&
            const DeepCollectionEquality()
                .equals(other.groupedTransactions, groupedTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedWallet),
      const DeepCollectionEquality().hash(transactions),
      const DeepCollectionEquality().hash(groupedTransactions));

  @JsonKey(ignore: true)
  @override
  $LoadedSelectedWalletStateCopyWith<LoadedSelectedWalletState> get copyWith =>
      _$LoadedSelectedWalletStateCopyWithImpl<LoadedSelectedWalletState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loaded,
    required TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loadedAllWallets,
    required TResult Function(String message) failure,
  }) {
    return loaded(selectedWallet, transactions, groupedTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(selectedWallet, transactions, groupedTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedWallet, transactions, groupedTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySelectedWalletState value) empty,
    required TResult Function(LoadingSelectedWalletState value) loading,
    required TResult Function(LoadedSelectedWalletState value) loaded,
    required TResult Function(LoadedAllWalletsWalletState value)
        loadedAllWallets,
    required TResult Function(FailureSelectedWalletState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSelectedWalletState extends SelectedWalletState {
  const factory LoadedSelectedWalletState(
          WalletModel selectedWallet,
          List<TransactionModel> transactions,
          Map<String, List<TransactionModel>> groupedTransactions) =
      _$LoadedSelectedWalletState;
  const LoadedSelectedWalletState._() : super._();

  WalletModel get selectedWallet;
  List<TransactionModel> get transactions;
  Map<String, List<TransactionModel>> get groupedTransactions;
  @JsonKey(ignore: true)
  $LoadedSelectedWalletStateCopyWith<LoadedSelectedWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedAllWalletsWalletStateCopyWith<$Res> {
  factory $LoadedAllWalletsWalletStateCopyWith(
          LoadedAllWalletsWalletState value,
          $Res Function(LoadedAllWalletsWalletState) then) =
      _$LoadedAllWalletsWalletStateCopyWithImpl<$Res>;
  $Res call(
      {List<TransactionModel> transactions,
      Map<String, List<TransactionModel>> groupedTransactions});
}

/// @nodoc
class _$LoadedAllWalletsWalletStateCopyWithImpl<$Res>
    extends _$SelectedWalletStateCopyWithImpl<$Res>
    implements $LoadedAllWalletsWalletStateCopyWith<$Res> {
  _$LoadedAllWalletsWalletStateCopyWithImpl(LoadedAllWalletsWalletState _value,
      $Res Function(LoadedAllWalletsWalletState) _then)
      : super(_value, (v) => _then(v as LoadedAllWalletsWalletState));

  @override
  LoadedAllWalletsWalletState get _value =>
      super._value as LoadedAllWalletsWalletState;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? groupedTransactions = freezed,
  }) {
    return _then(LoadedAllWalletsWalletState(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      groupedTransactions == freezed
          ? _value.groupedTransactions
          : groupedTransactions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<TransactionModel>>,
    ));
  }
}

/// @nodoc

class _$LoadedAllWalletsWalletState extends LoadedAllWalletsWalletState {
  const _$LoadedAllWalletsWalletState(
      this.transactions, this.groupedTransactions)
      : super._();

  @override
  final List<TransactionModel> transactions;
  @override
  final Map<String, List<TransactionModel>> groupedTransactions;

  @override
  String toString() {
    return 'SelectedWalletState.loadedAllWallets(transactions: $transactions, groupedTransactions: $groupedTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedAllWalletsWalletState &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions) &&
            const DeepCollectionEquality()
                .equals(other.groupedTransactions, groupedTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactions),
      const DeepCollectionEquality().hash(groupedTransactions));

  @JsonKey(ignore: true)
  @override
  $LoadedAllWalletsWalletStateCopyWith<LoadedAllWalletsWalletState>
      get copyWith => _$LoadedAllWalletsWalletStateCopyWithImpl<
          LoadedAllWalletsWalletState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loaded,
    required TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loadedAllWallets,
    required TResult Function(String message) failure,
  }) {
    return loadedAllWallets(transactions, groupedTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
  }) {
    return loadedAllWallets?.call(transactions, groupedTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loadedAllWallets != null) {
      return loadedAllWallets(transactions, groupedTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySelectedWalletState value) empty,
    required TResult Function(LoadingSelectedWalletState value) loading,
    required TResult Function(LoadedSelectedWalletState value) loaded,
    required TResult Function(LoadedAllWalletsWalletState value)
        loadedAllWallets,
    required TResult Function(FailureSelectedWalletState value) failure,
  }) {
    return loadedAllWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
  }) {
    return loadedAllWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
    required TResult orElse(),
  }) {
    if (loadedAllWallets != null) {
      return loadedAllWallets(this);
    }
    return orElse();
  }
}

abstract class LoadedAllWalletsWalletState extends SelectedWalletState {
  const factory LoadedAllWalletsWalletState(List<TransactionModel> transactions,
          Map<String, List<TransactionModel>> groupedTransactions) =
      _$LoadedAllWalletsWalletState;
  const LoadedAllWalletsWalletState._() : super._();

  List<TransactionModel> get transactions;
  Map<String, List<TransactionModel>> get groupedTransactions;
  @JsonKey(ignore: true)
  $LoadedAllWalletsWalletStateCopyWith<LoadedAllWalletsWalletState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureSelectedWalletStateCopyWith<$Res> {
  factory $FailureSelectedWalletStateCopyWith(FailureSelectedWalletState value,
          $Res Function(FailureSelectedWalletState) then) =
      _$FailureSelectedWalletStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureSelectedWalletStateCopyWithImpl<$Res>
    extends _$SelectedWalletStateCopyWithImpl<$Res>
    implements $FailureSelectedWalletStateCopyWith<$Res> {
  _$FailureSelectedWalletStateCopyWithImpl(FailureSelectedWalletState _value,
      $Res Function(FailureSelectedWalletState) _then)
      : super(_value, (v) => _then(v as FailureSelectedWalletState));

  @override
  FailureSelectedWalletState get _value =>
      super._value as FailureSelectedWalletState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureSelectedWalletState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureSelectedWalletState extends FailureSelectedWalletState {
  const _$FailureSelectedWalletState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SelectedWalletState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureSelectedWalletState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureSelectedWalletStateCopyWith<FailureSelectedWalletState>
      get copyWith =>
          _$FailureSelectedWalletStateCopyWithImpl<FailureSelectedWalletState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loaded,
    required TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)
        loadedAllWallets,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(
            WalletModel selectedWallet,
            List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loaded,
    TResult Function(List<TransactionModel> transactions,
            Map<String, List<TransactionModel>> groupedTransactions)?
        loadedAllWallets,
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
    required TResult Function(EmptySelectedWalletState value) empty,
    required TResult Function(LoadingSelectedWalletState value) loading,
    required TResult Function(LoadedSelectedWalletState value) loaded,
    required TResult Function(LoadedAllWalletsWalletState value)
        loadedAllWallets,
    required TResult Function(FailureSelectedWalletState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySelectedWalletState value)? empty,
    TResult Function(LoadingSelectedWalletState value)? loading,
    TResult Function(LoadedSelectedWalletState value)? loaded,
    TResult Function(LoadedAllWalletsWalletState value)? loadedAllWallets,
    TResult Function(FailureSelectedWalletState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureSelectedWalletState extends SelectedWalletState {
  const factory FailureSelectedWalletState(String message) =
      _$FailureSelectedWalletState;
  const FailureSelectedWalletState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $FailureSelectedWalletStateCopyWith<FailureSelectedWalletState>
      get copyWith => throw _privateConstructorUsedError;
}
