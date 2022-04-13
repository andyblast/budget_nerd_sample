import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user_bloc.freezed.dart';

@freezed
class CurrentUserEvent with _$CurrentUserEvent {
  const CurrentUserEvent._();

  const factory CurrentUserEvent.watch() = WatchCurrentUserEvent;

  const factory CurrentUserEvent.streamSynced(UserModel currentUser) =
      CurrentUserStreamSyncedEvent;
}

@freezed
class CurrentUserState with _$CurrentUserState {
  const CurrentUserState._();

  const factory CurrentUserState.empty() = EmptyCurrentUserState;

  const factory CurrentUserState.loading() = LoadingCurrentUserState;

  const factory CurrentUserState.loaded(UserModel currentUser) =
      LoadedCurrentUserState;

  const factory CurrentUserState.failure(String message) =
      FailureCurrentUserState;
}

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  final WatchCurrentUserUseCase _watchCurrentUserUseCase;

  CurrentUserBloc({required WatchCurrentUserUseCase watchCurrentUserUseCase})
      : _watchCurrentUserUseCase = watchCurrentUserUseCase,
        super(const EmptyCurrentUserState());

  StreamSubscription? _subscription;

  @override
  Stream<CurrentUserState> mapEventToState(CurrentUserEvent event) =>
      event.when<Stream<CurrentUserState>>(
        watch: _watch,
        streamSynced: _streamSynced,
      );

  Stream<CurrentUserState> _watch() async* {
    yield LoadingCurrentUserState();
    final failureOrUser = _watchCurrentUserUseCase(NoParams());

    failureOrUser.fold((_) {}, (currentUserStream) {
      _subscription?.cancel();
      _subscription = currentUserStream.listen((currentUser) {
        add(CurrentUserStreamSyncedEvent(currentUser));
      });
    });
  }

  Stream<CurrentUserState> _streamSynced(UserModel currentUser) async* {
    yield LoadingCurrentUserState();
    yield LoadedCurrentUserState(currentUser);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
