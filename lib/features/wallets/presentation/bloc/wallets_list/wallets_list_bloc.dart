import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallets_list_bloc.freezed.dart';

@freezed
class WalletListEvent with _$WalletListEvent {
  const WalletListEvent._();

  const factory WalletListEvent.watch() = WatchAllWalletsEvent;

  const factory WalletListEvent.streamSynced(List<WalletModel> walletsList) =
      WalletListStreamSyncedEvent;
}

@freezed
class WalletListState with _$WalletListState {
  const WalletListState._();

  const factory WalletListState.empty() = EmptyWalletListState;

  const factory WalletListState.loading() = LoadingWalletListState;

  const factory WalletListState.loaded(List<WalletModel> walletsList) =
      LoadedWalletListState;

  const factory WalletListState.failure(String message) =
      FailureWalletListState;
}

class WalletListBloc extends Bloc<WalletListEvent, WalletListState> {
  final WatchWalletsUseCase _watchWalletsUseCase;

  WalletListBloc({required WatchWalletsUseCase watchWalletsUseCase})
      : _watchWalletsUseCase = watchWalletsUseCase,
        super(const EmptyWalletListState());

  StreamSubscription? _subscription;

  @override
  Stream<WalletListState> mapEventToState(WalletListEvent event) =>
      event.when<Stream<WalletListState>>(
        watch: _watch,
        streamSynced: _streamSynced,
      );

  Stream<WalletListState> _watch() async* {
    yield LoadingWalletListState();
    final failureOrWallets = _watchWalletsUseCase(NoParams());

    failureOrWallets.fold(
      (_) => FailureWalletListState(''),
      (walletsStream) {
        _subscription?.cancel();
        _subscription = walletsStream.listen(
          (wallets) => add(WalletListStreamSyncedEvent(wallets)),
        );
      },
    );
  }

  Stream<WalletListState> _streamSynced(List<WalletModel> walletsList) async* {
    yield LoadingWalletListState();
    yield LoadedWalletListState(walletsList);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
