// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currencies_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrenciesListEventTearOff {
  const _$CurrenciesListEventTearOff();

  ReadCurrenciesListEvent read() {
    return const ReadCurrenciesListEvent();
  }
}

/// @nodoc
const $CurrenciesListEvent = _$CurrenciesListEventTearOff();

/// @nodoc
mixin _$CurrenciesListEvent {
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
    required TResult Function(ReadCurrenciesListEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadCurrenciesListEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadCurrenciesListEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesListEventCopyWith<$Res> {
  factory $CurrenciesListEventCopyWith(
          CurrenciesListEvent value, $Res Function(CurrenciesListEvent) then) =
      _$CurrenciesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrenciesListEventCopyWithImpl<$Res>
    implements $CurrenciesListEventCopyWith<$Res> {
  _$CurrenciesListEventCopyWithImpl(this._value, this._then);

  final CurrenciesListEvent _value;
  // ignore: unused_field
  final $Res Function(CurrenciesListEvent) _then;
}

/// @nodoc
abstract class $ReadCurrenciesListEventCopyWith<$Res> {
  factory $ReadCurrenciesListEventCopyWith(ReadCurrenciesListEvent value,
          $Res Function(ReadCurrenciesListEvent) then) =
      _$ReadCurrenciesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadCurrenciesListEventCopyWithImpl<$Res>
    extends _$CurrenciesListEventCopyWithImpl<$Res>
    implements $ReadCurrenciesListEventCopyWith<$Res> {
  _$ReadCurrenciesListEventCopyWithImpl(ReadCurrenciesListEvent _value,
      $Res Function(ReadCurrenciesListEvent) _then)
      : super(_value, (v) => _then(v as ReadCurrenciesListEvent));

  @override
  ReadCurrenciesListEvent get _value => super._value as ReadCurrenciesListEvent;
}

/// @nodoc

class _$ReadCurrenciesListEvent extends ReadCurrenciesListEvent {
  const _$ReadCurrenciesListEvent() : super._();

  @override
  String toString() {
    return 'CurrenciesListEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadCurrenciesListEvent);
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
    required TResult Function(ReadCurrenciesListEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadCurrenciesListEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadCurrenciesListEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadCurrenciesListEvent extends CurrenciesListEvent {
  const factory ReadCurrenciesListEvent() = _$ReadCurrenciesListEvent;
  const ReadCurrenciesListEvent._() : super._();
}

/// @nodoc
class _$CurrenciesListStateTearOff {
  const _$CurrenciesListStateTearOff();

  EmptyCurrenciesListState empty() {
    return const EmptyCurrenciesListState();
  }

  LoadingCurrenciesListState loading() {
    return const LoadingCurrenciesListState();
  }

  LoadedCurrenciesListState loaded(List<CurrencyModel> currenciesList,
      Map<String, CurrencyModel> currenciesHash) {
    return LoadedCurrenciesListState(
      currenciesList,
      currenciesHash,
    );
  }

  FailureCurrenciesListState failure(String message) {
    return FailureCurrenciesListState(
      message,
    );
  }
}

/// @nodoc
const $CurrenciesListState = _$CurrenciesListStateTearOff();

/// @nodoc
mixin _$CurrenciesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)
        loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCurrenciesListState value) empty,
    required TResult Function(LoadingCurrenciesListState value) loading,
    required TResult Function(LoadedCurrenciesListState value) loaded,
    required TResult Function(FailureCurrenciesListState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesListStateCopyWith<$Res> {
  factory $CurrenciesListStateCopyWith(
          CurrenciesListState value, $Res Function(CurrenciesListState) then) =
      _$CurrenciesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrenciesListStateCopyWithImpl<$Res>
    implements $CurrenciesListStateCopyWith<$Res> {
  _$CurrenciesListStateCopyWithImpl(this._value, this._then);

  final CurrenciesListState _value;
  // ignore: unused_field
  final $Res Function(CurrenciesListState) _then;
}

/// @nodoc
abstract class $EmptyCurrenciesListStateCopyWith<$Res> {
  factory $EmptyCurrenciesListStateCopyWith(EmptyCurrenciesListState value,
          $Res Function(EmptyCurrenciesListState) then) =
      _$EmptyCurrenciesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCurrenciesListStateCopyWithImpl<$Res>
    extends _$CurrenciesListStateCopyWithImpl<$Res>
    implements $EmptyCurrenciesListStateCopyWith<$Res> {
  _$EmptyCurrenciesListStateCopyWithImpl(EmptyCurrenciesListState _value,
      $Res Function(EmptyCurrenciesListState) _then)
      : super(_value, (v) => _then(v as EmptyCurrenciesListState));

  @override
  EmptyCurrenciesListState get _value =>
      super._value as EmptyCurrenciesListState;
}

/// @nodoc

class _$EmptyCurrenciesListState extends EmptyCurrenciesListState {
  const _$EmptyCurrenciesListState() : super._();

  @override
  String toString() {
    return 'CurrenciesListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyCurrenciesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
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
    required TResult Function(EmptyCurrenciesListState value) empty,
    required TResult Function(LoadingCurrenciesListState value) loading,
    required TResult Function(LoadedCurrenciesListState value) loaded,
    required TResult Function(FailureCurrenciesListState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCurrenciesListState extends CurrenciesListState {
  const factory EmptyCurrenciesListState() = _$EmptyCurrenciesListState;
  const EmptyCurrenciesListState._() : super._();
}

/// @nodoc
abstract class $LoadingCurrenciesListStateCopyWith<$Res> {
  factory $LoadingCurrenciesListStateCopyWith(LoadingCurrenciesListState value,
          $Res Function(LoadingCurrenciesListState) then) =
      _$LoadingCurrenciesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCurrenciesListStateCopyWithImpl<$Res>
    extends _$CurrenciesListStateCopyWithImpl<$Res>
    implements $LoadingCurrenciesListStateCopyWith<$Res> {
  _$LoadingCurrenciesListStateCopyWithImpl(LoadingCurrenciesListState _value,
      $Res Function(LoadingCurrenciesListState) _then)
      : super(_value, (v) => _then(v as LoadingCurrenciesListState));

  @override
  LoadingCurrenciesListState get _value =>
      super._value as LoadingCurrenciesListState;
}

/// @nodoc

class _$LoadingCurrenciesListState extends LoadingCurrenciesListState {
  const _$LoadingCurrenciesListState() : super._();

  @override
  String toString() {
    return 'CurrenciesListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingCurrenciesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
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
    required TResult Function(EmptyCurrenciesListState value) empty,
    required TResult Function(LoadingCurrenciesListState value) loading,
    required TResult Function(LoadedCurrenciesListState value) loaded,
    required TResult Function(FailureCurrenciesListState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCurrenciesListState extends CurrenciesListState {
  const factory LoadingCurrenciesListState() = _$LoadingCurrenciesListState;
  const LoadingCurrenciesListState._() : super._();
}

/// @nodoc
abstract class $LoadedCurrenciesListStateCopyWith<$Res> {
  factory $LoadedCurrenciesListStateCopyWith(LoadedCurrenciesListState value,
          $Res Function(LoadedCurrenciesListState) then) =
      _$LoadedCurrenciesListStateCopyWithImpl<$Res>;
  $Res call(
      {List<CurrencyModel> currenciesList,
      Map<String, CurrencyModel> currenciesHash});
}

/// @nodoc
class _$LoadedCurrenciesListStateCopyWithImpl<$Res>
    extends _$CurrenciesListStateCopyWithImpl<$Res>
    implements $LoadedCurrenciesListStateCopyWith<$Res> {
  _$LoadedCurrenciesListStateCopyWithImpl(LoadedCurrenciesListState _value,
      $Res Function(LoadedCurrenciesListState) _then)
      : super(_value, (v) => _then(v as LoadedCurrenciesListState));

  @override
  LoadedCurrenciesListState get _value =>
      super._value as LoadedCurrenciesListState;

  @override
  $Res call({
    Object? currenciesList = freezed,
    Object? currenciesHash = freezed,
  }) {
    return _then(LoadedCurrenciesListState(
      currenciesList == freezed
          ? _value.currenciesList
          : currenciesList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      currenciesHash == freezed
          ? _value.currenciesHash
          : currenciesHash // ignore: cast_nullable_to_non_nullable
              as Map<String, CurrencyModel>,
    ));
  }
}

/// @nodoc

class _$LoadedCurrenciesListState extends LoadedCurrenciesListState {
  const _$LoadedCurrenciesListState(this.currenciesList, this.currenciesHash)
      : super._();

  @override
  final List<CurrencyModel> currenciesList;
  @override
  final Map<String, CurrencyModel> currenciesHash;

  @override
  String toString() {
    return 'CurrenciesListState.loaded(currenciesList: $currenciesList, currenciesHash: $currenciesHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCurrenciesListState &&
            const DeepCollectionEquality()
                .equals(other.currenciesList, currenciesList) &&
            const DeepCollectionEquality()
                .equals(other.currenciesHash, currenciesHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currenciesList),
      const DeepCollectionEquality().hash(currenciesHash));

  @JsonKey(ignore: true)
  @override
  $LoadedCurrenciesListStateCopyWith<LoadedCurrenciesListState> get copyWith =>
      _$LoadedCurrenciesListStateCopyWithImpl<LoadedCurrenciesListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(currenciesList, currenciesHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(currenciesList, currenciesHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currenciesList, currenciesHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCurrenciesListState value) empty,
    required TResult Function(LoadingCurrenciesListState value) loading,
    required TResult Function(LoadedCurrenciesListState value) loaded,
    required TResult Function(FailureCurrenciesListState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCurrenciesListState extends CurrenciesListState {
  const factory LoadedCurrenciesListState(List<CurrencyModel> currenciesList,
      Map<String, CurrencyModel> currenciesHash) = _$LoadedCurrenciesListState;
  const LoadedCurrenciesListState._() : super._();

  List<CurrencyModel> get currenciesList;
  Map<String, CurrencyModel> get currenciesHash;
  @JsonKey(ignore: true)
  $LoadedCurrenciesListStateCopyWith<LoadedCurrenciesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCurrenciesListStateCopyWith<$Res> {
  factory $FailureCurrenciesListStateCopyWith(FailureCurrenciesListState value,
          $Res Function(FailureCurrenciesListState) then) =
      _$FailureCurrenciesListStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCurrenciesListStateCopyWithImpl<$Res>
    extends _$CurrenciesListStateCopyWithImpl<$Res>
    implements $FailureCurrenciesListStateCopyWith<$Res> {
  _$FailureCurrenciesListStateCopyWithImpl(FailureCurrenciesListState _value,
      $Res Function(FailureCurrenciesListState) _then)
      : super(_value, (v) => _then(v as FailureCurrenciesListState));

  @override
  FailureCurrenciesListState get _value =>
      super._value as FailureCurrenciesListState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureCurrenciesListState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureCurrenciesListState extends FailureCurrenciesListState {
  const _$FailureCurrenciesListState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CurrenciesListState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureCurrenciesListState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureCurrenciesListStateCopyWith<FailureCurrenciesListState>
      get copyWith =>
          _$FailureCurrenciesListStateCopyWithImpl<FailureCurrenciesListState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)
        loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CurrencyModel> currenciesList,
            Map<String, CurrencyModel> currenciesHash)?
        loaded,
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
    required TResult Function(EmptyCurrenciesListState value) empty,
    required TResult Function(LoadingCurrenciesListState value) loading,
    required TResult Function(LoadedCurrenciesListState value) loaded,
    required TResult Function(FailureCurrenciesListState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrenciesListState value)? empty,
    TResult Function(LoadingCurrenciesListState value)? loading,
    TResult Function(LoadedCurrenciesListState value)? loaded,
    TResult Function(FailureCurrenciesListState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureCurrenciesListState extends CurrenciesListState {
  const factory FailureCurrenciesListState(String message) =
      _$FailureCurrenciesListState;
  const FailureCurrenciesListState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $FailureCurrenciesListStateCopyWith<FailureCurrenciesListState>
      get copyWith => throw _privateConstructorUsedError;
}
