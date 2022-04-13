// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentUserEventTearOff {
  const _$CurrentUserEventTearOff();

  WatchCurrentUserEvent watch() {
    return const WatchCurrentUserEvent();
  }

  CurrentUserStreamSyncedEvent streamSynced(UserModel currentUser) {
    return CurrentUserStreamSyncedEvent(
      currentUser,
    );
  }
}

/// @nodoc
const $CurrentUserEvent = _$CurrentUserEventTearOff();

/// @nodoc
mixin _$CurrentUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(UserModel currentUser) streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(UserModel currentUser)? streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(UserModel currentUser)? streamSynced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchCurrentUserEvent value) watch,
    required TResult Function(CurrentUserStreamSyncedEvent value) streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchCurrentUserEvent value)? watch,
    TResult Function(CurrentUserStreamSyncedEvent value)? streamSynced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchCurrentUserEvent value)? watch,
    TResult Function(CurrentUserStreamSyncedEvent value)? streamSynced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserEventCopyWith<$Res> {
  factory $CurrentUserEventCopyWith(
          CurrentUserEvent value, $Res Function(CurrentUserEvent) then) =
      _$CurrentUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentUserEventCopyWithImpl<$Res>
    implements $CurrentUserEventCopyWith<$Res> {
  _$CurrentUserEventCopyWithImpl(this._value, this._then);

  final CurrentUserEvent _value;
  // ignore: unused_field
  final $Res Function(CurrentUserEvent) _then;
}

/// @nodoc
abstract class $WatchCurrentUserEventCopyWith<$Res> {
  factory $WatchCurrentUserEventCopyWith(WatchCurrentUserEvent value,
          $Res Function(WatchCurrentUserEvent) then) =
      _$WatchCurrentUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchCurrentUserEventCopyWithImpl<$Res>
    extends _$CurrentUserEventCopyWithImpl<$Res>
    implements $WatchCurrentUserEventCopyWith<$Res> {
  _$WatchCurrentUserEventCopyWithImpl(
      WatchCurrentUserEvent _value, $Res Function(WatchCurrentUserEvent) _then)
      : super(_value, (v) => _then(v as WatchCurrentUserEvent));

  @override
  WatchCurrentUserEvent get _value => super._value as WatchCurrentUserEvent;
}

/// @nodoc

class _$WatchCurrentUserEvent extends WatchCurrentUserEvent {
  const _$WatchCurrentUserEvent() : super._();

  @override
  String toString() {
    return 'CurrentUserEvent.watch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchCurrentUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(UserModel currentUser) streamSynced,
  }) {
    return watch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(UserModel currentUser)? streamSynced,
  }) {
    return watch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(UserModel currentUser)? streamSynced,
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
    required TResult Function(WatchCurrentUserEvent value) watch,
    required TResult Function(CurrentUserStreamSyncedEvent value) streamSynced,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchCurrentUserEvent value)? watch,
    TResult Function(CurrentUserStreamSyncedEvent value)? streamSynced,
  }) {
    return watch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchCurrentUserEvent value)? watch,
    TResult Function(CurrentUserStreamSyncedEvent value)? streamSynced,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class WatchCurrentUserEvent extends CurrentUserEvent {
  const factory WatchCurrentUserEvent() = _$WatchCurrentUserEvent;
  const WatchCurrentUserEvent._() : super._();
}

/// @nodoc
abstract class $CurrentUserStreamSyncedEventCopyWith<$Res> {
  factory $CurrentUserStreamSyncedEventCopyWith(
          CurrentUserStreamSyncedEvent value,
          $Res Function(CurrentUserStreamSyncedEvent) then) =
      _$CurrentUserStreamSyncedEventCopyWithImpl<$Res>;
  $Res call({UserModel currentUser});
}

/// @nodoc
class _$CurrentUserStreamSyncedEventCopyWithImpl<$Res>
    extends _$CurrentUserEventCopyWithImpl<$Res>
    implements $CurrentUserStreamSyncedEventCopyWith<$Res> {
  _$CurrentUserStreamSyncedEventCopyWithImpl(
      CurrentUserStreamSyncedEvent _value,
      $Res Function(CurrentUserStreamSyncedEvent) _then)
      : super(_value, (v) => _then(v as CurrentUserStreamSyncedEvent));

  @override
  CurrentUserStreamSyncedEvent get _value =>
      super._value as CurrentUserStreamSyncedEvent;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(CurrentUserStreamSyncedEvent(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$CurrentUserStreamSyncedEvent extends CurrentUserStreamSyncedEvent {
  const _$CurrentUserStreamSyncedEvent(this.currentUser) : super._();

  @override
  final UserModel currentUser;

  @override
  String toString() {
    return 'CurrentUserEvent.streamSynced(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentUserStreamSyncedEvent &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentUser));

  @JsonKey(ignore: true)
  @override
  $CurrentUserStreamSyncedEventCopyWith<CurrentUserStreamSyncedEvent>
      get copyWith => _$CurrentUserStreamSyncedEventCopyWithImpl<
          CurrentUserStreamSyncedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watch,
    required TResult Function(UserModel currentUser) streamSynced,
  }) {
    return streamSynced(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(UserModel currentUser)? streamSynced,
  }) {
    return streamSynced?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watch,
    TResult Function(UserModel currentUser)? streamSynced,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchCurrentUserEvent value) watch,
    required TResult Function(CurrentUserStreamSyncedEvent value) streamSynced,
  }) {
    return streamSynced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchCurrentUserEvent value)? watch,
    TResult Function(CurrentUserStreamSyncedEvent value)? streamSynced,
  }) {
    return streamSynced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchCurrentUserEvent value)? watch,
    TResult Function(CurrentUserStreamSyncedEvent value)? streamSynced,
    required TResult orElse(),
  }) {
    if (streamSynced != null) {
      return streamSynced(this);
    }
    return orElse();
  }
}

abstract class CurrentUserStreamSyncedEvent extends CurrentUserEvent {
  const factory CurrentUserStreamSyncedEvent(UserModel currentUser) =
      _$CurrentUserStreamSyncedEvent;
  const CurrentUserStreamSyncedEvent._() : super._();

  UserModel get currentUser;
  @JsonKey(ignore: true)
  $CurrentUserStreamSyncedEventCopyWith<CurrentUserStreamSyncedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CurrentUserStateTearOff {
  const _$CurrentUserStateTearOff();

  EmptyCurrentUserState empty() {
    return const EmptyCurrentUserState();
  }

  LoadingCurrentUserState loading() {
    return const LoadingCurrentUserState();
  }

  LoadedCurrentUserState loaded(UserModel currentUser) {
    return LoadedCurrentUserState(
      currentUser,
    );
  }

  FailureCurrentUserState failure(String message) {
    return FailureCurrentUserState(
      message,
    );
  }
}

/// @nodoc
const $CurrentUserState = _$CurrentUserStateTearOff();

/// @nodoc
mixin _$CurrentUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCurrentUserState value) empty,
    required TResult Function(LoadingCurrentUserState value) loading,
    required TResult Function(LoadedCurrentUserState value) loaded,
    required TResult Function(FailureCurrentUserState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserStateCopyWith(
          CurrentUserState value, $Res Function(CurrentUserState) then) =
      _$CurrentUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentUserStateCopyWithImpl<$Res>
    implements $CurrentUserStateCopyWith<$Res> {
  _$CurrentUserStateCopyWithImpl(this._value, this._then);

  final CurrentUserState _value;
  // ignore: unused_field
  final $Res Function(CurrentUserState) _then;
}

/// @nodoc
abstract class $EmptyCurrentUserStateCopyWith<$Res> {
  factory $EmptyCurrentUserStateCopyWith(EmptyCurrentUserState value,
          $Res Function(EmptyCurrentUserState) then) =
      _$EmptyCurrentUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCurrentUserStateCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res>
    implements $EmptyCurrentUserStateCopyWith<$Res> {
  _$EmptyCurrentUserStateCopyWithImpl(
      EmptyCurrentUserState _value, $Res Function(EmptyCurrentUserState) _then)
      : super(_value, (v) => _then(v as EmptyCurrentUserState));

  @override
  EmptyCurrentUserState get _value => super._value as EmptyCurrentUserState;
}

/// @nodoc

class _$EmptyCurrentUserState extends EmptyCurrentUserState {
  const _$EmptyCurrentUserState() : super._();

  @override
  String toString() {
    return 'CurrentUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyCurrentUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
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
    required TResult Function(EmptyCurrentUserState value) empty,
    required TResult Function(LoadingCurrentUserState value) loading,
    required TResult Function(LoadedCurrentUserState value) loaded,
    required TResult Function(FailureCurrentUserState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCurrentUserState extends CurrentUserState {
  const factory EmptyCurrentUserState() = _$EmptyCurrentUserState;
  const EmptyCurrentUserState._() : super._();
}

/// @nodoc
abstract class $LoadingCurrentUserStateCopyWith<$Res> {
  factory $LoadingCurrentUserStateCopyWith(LoadingCurrentUserState value,
          $Res Function(LoadingCurrentUserState) then) =
      _$LoadingCurrentUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCurrentUserStateCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res>
    implements $LoadingCurrentUserStateCopyWith<$Res> {
  _$LoadingCurrentUserStateCopyWithImpl(LoadingCurrentUserState _value,
      $Res Function(LoadingCurrentUserState) _then)
      : super(_value, (v) => _then(v as LoadingCurrentUserState));

  @override
  LoadingCurrentUserState get _value => super._value as LoadingCurrentUserState;
}

/// @nodoc

class _$LoadingCurrentUserState extends LoadingCurrentUserState {
  const _$LoadingCurrentUserState() : super._();

  @override
  String toString() {
    return 'CurrentUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingCurrentUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
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
    required TResult Function(EmptyCurrentUserState value) empty,
    required TResult Function(LoadingCurrentUserState value) loading,
    required TResult Function(LoadedCurrentUserState value) loaded,
    required TResult Function(FailureCurrentUserState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCurrentUserState extends CurrentUserState {
  const factory LoadingCurrentUserState() = _$LoadingCurrentUserState;
  const LoadingCurrentUserState._() : super._();
}

/// @nodoc
abstract class $LoadedCurrentUserStateCopyWith<$Res> {
  factory $LoadedCurrentUserStateCopyWith(LoadedCurrentUserState value,
          $Res Function(LoadedCurrentUserState) then) =
      _$LoadedCurrentUserStateCopyWithImpl<$Res>;
  $Res call({UserModel currentUser});
}

/// @nodoc
class _$LoadedCurrentUserStateCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res>
    implements $LoadedCurrentUserStateCopyWith<$Res> {
  _$LoadedCurrentUserStateCopyWithImpl(LoadedCurrentUserState _value,
      $Res Function(LoadedCurrentUserState) _then)
      : super(_value, (v) => _then(v as LoadedCurrentUserState));

  @override
  LoadedCurrentUserState get _value => super._value as LoadedCurrentUserState;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(LoadedCurrentUserState(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$LoadedCurrentUserState extends LoadedCurrentUserState {
  const _$LoadedCurrentUserState(this.currentUser) : super._();

  @override
  final UserModel currentUser;

  @override
  String toString() {
    return 'CurrentUserState.loaded(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCurrentUserState &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentUser));

  @JsonKey(ignore: true)
  @override
  $LoadedCurrentUserStateCopyWith<LoadedCurrentUserState> get copyWith =>
      _$LoadedCurrentUserStateCopyWithImpl<LoadedCurrentUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
  }) {
    return loaded?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCurrentUserState value) empty,
    required TResult Function(LoadingCurrentUserState value) loading,
    required TResult Function(LoadedCurrentUserState value) loaded,
    required TResult Function(FailureCurrentUserState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCurrentUserState extends CurrentUserState {
  const factory LoadedCurrentUserState(UserModel currentUser) =
      _$LoadedCurrentUserState;
  const LoadedCurrentUserState._() : super._();

  UserModel get currentUser;
  @JsonKey(ignore: true)
  $LoadedCurrentUserStateCopyWith<LoadedCurrentUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCurrentUserStateCopyWith<$Res> {
  factory $FailureCurrentUserStateCopyWith(FailureCurrentUserState value,
          $Res Function(FailureCurrentUserState) then) =
      _$FailureCurrentUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCurrentUserStateCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res>
    implements $FailureCurrentUserStateCopyWith<$Res> {
  _$FailureCurrentUserStateCopyWithImpl(FailureCurrentUserState _value,
      $Res Function(FailureCurrentUserState) _then)
      : super(_value, (v) => _then(v as FailureCurrentUserState));

  @override
  FailureCurrentUserState get _value => super._value as FailureCurrentUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureCurrentUserState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureCurrentUserState extends FailureCurrentUserState {
  const _$FailureCurrentUserState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CurrentUserState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureCurrentUserState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureCurrentUserStateCopyWith<FailureCurrentUserState> get copyWith =>
      _$FailureCurrentUserStateCopyWithImpl<FailureCurrentUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserModel currentUser)? loaded,
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
    required TResult Function(EmptyCurrentUserState value) empty,
    required TResult Function(LoadingCurrentUserState value) loading,
    required TResult Function(LoadedCurrentUserState value) loaded,
    required TResult Function(FailureCurrentUserState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCurrentUserState value)? empty,
    TResult Function(LoadingCurrentUserState value)? loading,
    TResult Function(LoadedCurrentUserState value)? loaded,
    TResult Function(FailureCurrentUserState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureCurrentUserState extends CurrentUserState {
  const factory FailureCurrentUserState(String message) =
      _$FailureCurrentUserState;
  const FailureCurrentUserState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  $FailureCurrentUserStateCopyWith<FailureCurrentUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
