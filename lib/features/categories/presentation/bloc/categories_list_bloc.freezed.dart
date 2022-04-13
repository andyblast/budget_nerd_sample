// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesListEventTearOff {
  const _$CategoriesListEventTearOff();

  ReadCategoriesListEvent read() {
    return const ReadCategoriesListEvent();
  }

  StreamSyncedCategoriesListEvent streamSynced(
      List<CategoryModel> categoriesList) {
    return StreamSyncedCategoriesListEvent(
      categoriesList,
    );
  }
}

/// @nodoc
const $CategoriesListEvent = _$CategoriesListEventTearOff();

/// @nodoc
mixin _$CategoriesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function(List<CategoryModel> categoriesList) streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(List<CategoryModel> categoriesList)? streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(List<CategoryModel> categoriesList)? streamSynced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadCategoriesListEvent value) read,
    required TResult Function(StreamSyncedCategoriesListEvent value)
        streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadCategoriesListEvent value)? read,
    TResult Function(StreamSyncedCategoriesListEvent value)? streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadCategoriesListEvent value)? read,
    TResult Function(StreamSyncedCategoriesListEvent value)? streamSynced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesListEventCopyWith<$Res> {
  factory $CategoriesListEventCopyWith(
          CategoriesListEvent value, $Res Function(CategoriesListEvent) then) =
      _$CategoriesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesListEventCopyWithImpl<$Res>
    implements $CategoriesListEventCopyWith<$Res> {
  _$CategoriesListEventCopyWithImpl(this._value, this._then);

  final CategoriesListEvent _value;
  // ignore: unused_field
  final $Res Function(CategoriesListEvent) _then;
}

/// @nodoc
abstract class $ReadCategoriesListEventCopyWith<$Res> {
  factory $ReadCategoriesListEventCopyWith(ReadCategoriesListEvent value,
          $Res Function(ReadCategoriesListEvent) then) =
      _$ReadCategoriesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadCategoriesListEventCopyWithImpl<$Res>
    extends _$CategoriesListEventCopyWithImpl<$Res>
    implements $ReadCategoriesListEventCopyWith<$Res> {
  _$ReadCategoriesListEventCopyWithImpl(ReadCategoriesListEvent _value,
      $Res Function(ReadCategoriesListEvent) _then)
      : super(_value, (v) => _then(v as ReadCategoriesListEvent));

  @override
  ReadCategoriesListEvent get _value => super._value as ReadCategoriesListEvent;
}

/// @nodoc

class _$ReadCategoriesListEvent extends ReadCategoriesListEvent {
  const _$ReadCategoriesListEvent() : super._();

  @override
  String toString() {
    return 'CategoriesListEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadCategoriesListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function(List<CategoryModel> categoriesList) streamSynced,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(List<CategoryModel> categoriesList)? streamSynced,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(List<CategoryModel> categoriesList)? streamSynced,
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
    required TResult Function(ReadCategoriesListEvent value) read,
    required TResult Function(StreamSyncedCategoriesListEvent value)
        streamSynced,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadCategoriesListEvent value)? read,
    TResult Function(StreamSyncedCategoriesListEvent value)? streamSynced,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadCategoriesListEvent value)? read,
    TResult Function(StreamSyncedCategoriesListEvent value)? streamSynced,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadCategoriesListEvent extends CategoriesListEvent {
  const factory ReadCategoriesListEvent() = _$ReadCategoriesListEvent;
  const ReadCategoriesListEvent._() : super._();
}

/// @nodoc
abstract class $StreamSyncedCategoriesListEventCopyWith<$Res> {
  factory $StreamSyncedCategoriesListEventCopyWith(
          StreamSyncedCategoriesListEvent value,
          $Res Function(StreamSyncedCategoriesListEvent) then) =
      _$StreamSyncedCategoriesListEventCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> categoriesList});
}

/// @nodoc
class _$StreamSyncedCategoriesListEventCopyWithImpl<$Res>
    extends _$CategoriesListEventCopyWithImpl<$Res>
    implements $StreamSyncedCategoriesListEventCopyWith<$Res> {
  _$StreamSyncedCategoriesListEventCopyWithImpl(
      StreamSyncedCategoriesListEvent _value,
      $Res Function(StreamSyncedCategoriesListEvent) _then)
      : super(_value, (v) => _then(v as StreamSyncedCategoriesListEvent));

  @override
  StreamSyncedCategoriesListEvent get _value =>
      super._value as StreamSyncedCategoriesListEvent;

  @override
  $Res call({
    Object? categoriesList = freezed,
  }) {
    return _then(StreamSyncedCategoriesListEvent(
      categoriesList == freezed
          ? _value.categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$StreamSyncedCategoriesListEvent
    extends StreamSyncedCategoriesListEvent {
  const _$StreamSyncedCategoriesListEvent(this.categoriesList) : super._();

  @override
  final List<CategoryModel> categoriesList;

  @override
  String toString() {
    return 'CategoriesListEvent.streamSynced(categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamSyncedCategoriesListEvent &&
            const DeepCollectionEquality()
                .equals(other.categoriesList, categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoriesList));

  @JsonKey(ignore: true)
  @override
  $StreamSyncedCategoriesListEventCopyWith<StreamSyncedCategoriesListEvent>
      get copyWith => _$StreamSyncedCategoriesListEventCopyWithImpl<
          StreamSyncedCategoriesListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function(List<CategoryModel> categoriesList) streamSynced,
  }) {
    return streamSynced(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(List<CategoryModel> categoriesList)? streamSynced,
  }) {
    return streamSynced?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function(List<CategoryModel> categoriesList)? streamSynced,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadCategoriesListEvent value) read,
    required TResult Function(StreamSyncedCategoriesListEvent value)
        streamSynced,
  }) {
    return streamSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadCategoriesListEvent value)? read,
    TResult Function(StreamSyncedCategoriesListEvent value)? streamSynced,
  }) {
    return streamSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadCategoriesListEvent value)? read,
    TResult Function(StreamSyncedCategoriesListEvent value)? streamSynced,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(this);
    }
    return orElse();
  }
}

abstract class StreamSyncedCategoriesListEvent extends CategoriesListEvent {
  const factory StreamSyncedCategoriesListEvent(
      List<CategoryModel> categoriesList) = _$StreamSyncedCategoriesListEvent;
  const StreamSyncedCategoriesListEvent._() : super._();

  List<CategoryModel> get categoriesList;
  @JsonKey(ignore: true)
  $StreamSyncedCategoriesListEventCopyWith<StreamSyncedCategoriesListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoriesListStateTearOff {
  const _$CategoriesListStateTearOff();

  EmptyCategoriesListState empty() {
    return const EmptyCategoriesListState();
  }

  LoadingCategoriesListState loading() {
    return const LoadingCategoriesListState();
  }

  LoadedCategoriesListState loaded(List<CategoryModel> categoriesList) {
    return LoadedCategoriesListState(
      categoriesList,
    );
  }

  FailureCategoriesListState failure(String message) {
    return FailureCategoriesListState(
      message,
    );
  }
}

/// @nodoc
const $CategoriesListState = _$CategoriesListStateTearOff();

/// @nodoc
mixin _$CategoriesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categoriesList) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCategoriesListState value) empty,
    required TResult Function(LoadingCategoriesListState value) loading,
    required TResult Function(LoadedCategoriesListState value) loaded,
    required TResult Function(FailureCategoriesListState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesListStateCopyWith<$Res> {
  factory $CategoriesListStateCopyWith(
          CategoriesListState value, $Res Function(CategoriesListState) then) =
      _$CategoriesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesListStateCopyWithImpl<$Res>
    implements $CategoriesListStateCopyWith<$Res> {
  _$CategoriesListStateCopyWithImpl(this._value, this._then);

  final CategoriesListState _value;
  // ignore: unused_field
  final $Res Function(CategoriesListState) _then;
}

/// @nodoc
abstract class $EmptyCategoriesListStateCopyWith<$Res> {
  factory $EmptyCategoriesListStateCopyWith(EmptyCategoriesListState value,
          $Res Function(EmptyCategoriesListState) then) =
      _$EmptyCategoriesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCategoriesListStateCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res>
    implements $EmptyCategoriesListStateCopyWith<$Res> {
  _$EmptyCategoriesListStateCopyWithImpl(EmptyCategoriesListState _value,
      $Res Function(EmptyCategoriesListState) _then)
      : super(_value, (v) => _then(v as EmptyCategoriesListState));

  @override
  EmptyCategoriesListState get _value =>
      super._value as EmptyCategoriesListState;
}

/// @nodoc

class _$EmptyCategoriesListState extends EmptyCategoriesListState {
  const _$EmptyCategoriesListState() : super._();

  @override
  String toString() {
    return 'CategoriesListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyCategoriesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categoriesList) loaded,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
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
    required TResult Function(EmptyCategoriesListState value) empty,
    required TResult Function(LoadingCategoriesListState value) loading,
    required TResult Function(LoadedCategoriesListState value) loaded,
    required TResult Function(FailureCategoriesListState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCategoriesListState extends CategoriesListState {
  const factory EmptyCategoriesListState() = _$EmptyCategoriesListState;
  const EmptyCategoriesListState._() : super._();
}

/// @nodoc
abstract class $LoadingCategoriesListStateCopyWith<$Res> {
  factory $LoadingCategoriesListStateCopyWith(LoadingCategoriesListState value,
          $Res Function(LoadingCategoriesListState) then) =
      _$LoadingCategoriesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCategoriesListStateCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res>
    implements $LoadingCategoriesListStateCopyWith<$Res> {
  _$LoadingCategoriesListStateCopyWithImpl(LoadingCategoriesListState _value,
      $Res Function(LoadingCategoriesListState) _then)
      : super(_value, (v) => _then(v as LoadingCategoriesListState));

  @override
  LoadingCategoriesListState get _value =>
      super._value as LoadingCategoriesListState;
}

/// @nodoc

class _$LoadingCategoriesListState extends LoadingCategoriesListState {
  const _$LoadingCategoriesListState() : super._();

  @override
  String toString() {
    return 'CategoriesListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingCategoriesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categoriesList) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
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
    required TResult Function(EmptyCategoriesListState value) empty,
    required TResult Function(LoadingCategoriesListState value) loading,
    required TResult Function(LoadedCategoriesListState value) loaded,
    required TResult Function(FailureCategoriesListState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCategoriesListState extends CategoriesListState {
  const factory LoadingCategoriesListState() = _$LoadingCategoriesListState;
  const LoadingCategoriesListState._() : super._();
}

/// @nodoc
abstract class $LoadedCategoriesListStateCopyWith<$Res> {
  factory $LoadedCategoriesListStateCopyWith(LoadedCategoriesListState value,
          $Res Function(LoadedCategoriesListState) then) =
      _$LoadedCategoriesListStateCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> categoriesList});
}

/// @nodoc
class _$LoadedCategoriesListStateCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res>
    implements $LoadedCategoriesListStateCopyWith<$Res> {
  _$LoadedCategoriesListStateCopyWithImpl(LoadedCategoriesListState _value,
      $Res Function(LoadedCategoriesListState) _then)
      : super(_value, (v) => _then(v as LoadedCategoriesListState));

  @override
  LoadedCategoriesListState get _value =>
      super._value as LoadedCategoriesListState;

  @override
  $Res call({
    Object? categoriesList = freezed,
  }) {
    return _then(LoadedCategoriesListState(
      categoriesList == freezed
          ? _value.categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$LoadedCategoriesListState extends LoadedCategoriesListState {
  const _$LoadedCategoriesListState(this.categoriesList) : super._();

  @override
  final List<CategoryModel> categoriesList;

  @override
  String toString() {
    return 'CategoriesListState.loaded(categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCategoriesListState &&
            const DeepCollectionEquality()
                .equals(other.categoriesList, categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoriesList));

  @JsonKey(ignore: true)
  @override
  $LoadedCategoriesListStateCopyWith<LoadedCategoriesListState> get copyWith =>
      _$LoadedCategoriesListStateCopyWithImpl<LoadedCategoriesListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categoriesList) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCategoriesListState value) empty,
    required TResult Function(LoadingCategoriesListState value) loading,
    required TResult Function(LoadedCategoriesListState value) loaded,
    required TResult Function(FailureCategoriesListState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCategoriesListState extends CategoriesListState {
  const factory LoadedCategoriesListState(List<CategoryModel> categoriesList) =
      _$LoadedCategoriesListState;
  const LoadedCategoriesListState._() : super._();

  List<CategoryModel> get categoriesList;
  @JsonKey(ignore: true)
  $LoadedCategoriesListStateCopyWith<LoadedCategoriesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCategoriesListStateCopyWith<$Res> {
  factory $FailureCategoriesListStateCopyWith(FailureCategoriesListState value,
          $Res Function(FailureCategoriesListState) then) =
      _$FailureCategoriesListStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCategoriesListStateCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res>
    implements $FailureCategoriesListStateCopyWith<$Res> {
  _$FailureCategoriesListStateCopyWithImpl(FailureCategoriesListState _value,
      $Res Function(FailureCategoriesListState) _then)
      : super(_value, (v) => _then(v as FailureCategoriesListState));

  @override
  FailureCategoriesListState get _value =>
      super._value as FailureCategoriesListState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureCategoriesListState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureCategoriesListState extends FailureCategoriesListState {
  const _$FailureCategoriesListState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CategoriesListState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureCategoriesListState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureCategoriesListStateCopyWith<FailureCategoriesListState>
      get copyWith =>
          _$FailureCategoriesListStateCopyWithImpl<FailureCategoriesListState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categoriesList) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categoriesList)? loaded,
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
    required TResult Function(EmptyCategoriesListState value) empty,
    required TResult Function(LoadingCategoriesListState value) loading,
    required TResult Function(LoadedCategoriesListState value) loaded,
    required TResult Function(FailureCategoriesListState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCategoriesListState value)? empty,
    TResult Function(LoadingCategoriesListState value)? loading,
    TResult Function(LoadedCategoriesListState value)? loaded,
    TResult Function(FailureCategoriesListState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureCategoriesListState extends CategoriesListState {
  const factory FailureCategoriesListState(String message) =
      _$FailureCategoriesListState;
  const FailureCategoriesListState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $FailureCategoriesListStateCopyWith<FailureCategoriesListState>
      get copyWith => throw _privateConstructorUsedError;
}
