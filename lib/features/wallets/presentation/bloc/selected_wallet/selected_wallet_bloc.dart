import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budget_nerd/core/usecases/usecase.dart' as usecase;
import 'package:budget_nerd/core/usecases/usecase_stream.dart' as usecaseStream;
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/usecases/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'selected_wallet_bloc.freezed.dart';

@freezed
class SelectedWalletEvent with _$SelectedWalletEvent {
  const SelectedWalletEvent._();

  const factory SelectedWalletEvent.watch() = WatchSelectedWalletEvent;

  const factory SelectedWalletEvent.streamSynced(
    WalletModel selectedWallet,
    DateTime? selectedDate,
  ) = SelectedWalletStreamSyncedEvent;

  const factory SelectedWalletEvent.allWalletsStreamSynced(
    List<WalletModel> wallets,
    DateTime? selectedDate,
  ) = AllWalletStreamSyncedEvent;

  const factory SelectedWalletEvent.setEmpty() = SetEmptySelectedWalletEvent;

  const factory SelectedWalletEvent.watchAllWallets() =
      WatchAllWalletsWalletEvent;

  const factory SelectedWalletEvent.update(WalletModel selectedWallet) =
      UpdateSelectedWalletEvent;
}

@freezed
class SelectedWalletState with _$SelectedWalletState {
  const SelectedWalletState._();

  const factory SelectedWalletState.empty() = EmptySelectedWalletState;

  const factory SelectedWalletState.loading() = LoadingSelectedWalletState;

  const factory SelectedWalletState.loaded(
    WalletModel selectedWallet,
    List<TransactionModel> transactions,
    Map<String, List<TransactionModel>> groupedTransactions,
  ) = LoadedSelectedWalletState;

  const factory SelectedWalletState.loadedAllWallets(
    List<TransactionModel> transactions,
    Map<String, List<TransactionModel>> groupedTransactions,
  ) = LoadedAllWalletsWalletState;

  const factory SelectedWalletState.failure(String message) =
      FailureSelectedWalletState;
}

class SelectedWalletBloc
    extends Bloc<SelectedWalletEvent, SelectedWalletState> {
  final WatchWalletByIdUseCase _watchWalletByIdUseCase;
  final WatchWalletsUseCase _watchWalletsUseCase;
  final WatchCurrentUserUseCase _watchCurrentUserUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final GetTransactionsByWalletUseCase _getTransactionsByWalletUseCase;

  SelectedWalletBloc({
    required WatchWalletByIdUseCase watchWalletByIdUseCase,
    required WatchWalletsUseCase watchWalletsUseCase,
    required WatchCurrentUserUseCase watchCurrentUserUseCase,
    required GetCurrentUserUseCase getCurrentUserUseCase,
    required GetTransactionsByWalletUseCase getTransactionsByWalletUseCase,
  })  : _watchWalletByIdUseCase = watchWalletByIdUseCase,
        _watchCurrentUserUseCase = watchCurrentUserUseCase,
        _getCurrentUserUseCase = getCurrentUserUseCase,
        _getTransactionsByWalletUseCase = getTransactionsByWalletUseCase,
        _watchWalletsUseCase = watchWalletsUseCase,
        super(const EmptySelectedWalletState());

  StreamSubscription? _subscription;
  StreamSubscription? _userSubscription;
  StreamSubscription? _allWalletsSubscription;

  @override
  Stream<SelectedWalletState> mapEventToState(SelectedWalletEvent event) =>
      event.when<Stream<SelectedWalletState>>(
        watch: _watch,
        streamSynced: _streamSynced,
        allWalletsStreamSynced: _allWalletsStreamSynced,
        update: _update,
        setEmpty: _setEmpty,
        watchAllWallets: _watchAllWallets,
      );

  Stream<SelectedWalletState> _watch() async* {
    yield LoadingSelectedWalletState();

    var currentUserStreamOrFailure =
        _watchCurrentUserUseCase(usecaseStream.NoParams());

    currentUserStreamOrFailure.fold((l) => null, (currentUserStream) {
      _userSubscription?.cancel();
      _userSubscription = currentUserStream.listen((currentUser) async {
        if (currentUser.selectedWalletId != null) {
          final selectedWalletStreamOrFailure = _watchWalletByIdUseCase(
            WatchWalletByIdUseCaseParams(
              walletId: currentUser.selectedWalletId!,
            ),
          );

          selectedWalletStreamOrFailure.fold(
            (l) => FailureSelectedWalletState(''),
            (walletStream) {
              _subscription?.cancel();
              _subscription = walletStream.listen(
                (wallet) {
                  if (wallet != null) {
                    add(SelectedWalletStreamSyncedEvent(
                      wallet,
                      currentUser.selectedDate,
                    ));
                  } else {
                    add(SetEmptySelectedWalletEvent());
                  }
                },
              );
            },
          );
        } else {
          if (currentUser.selectedAllWallets!) {
            add(WatchAllWalletsWalletEvent());
          } else {
            add(SetEmptySelectedWalletEvent());
          }
        }
      });
    });
  }

  Stream<SelectedWalletState> _update(WalletModel selectedWallet) async* {
    yield LoadingSelectedWalletState();

    final user = await _getCurrentUserUseCase(usecase.NoParams());

    user.fold(
      (l) => null,
      (r) => add(
        SelectedWalletStreamSyncedEvent(
          selectedWallet,
          r.selectedDate,
        ),
      ),
    );
  }

  Stream<SelectedWalletState> _watchAllWallets() async* {
    yield LoadingSelectedWalletState();

    var currentUserStreamOrFailure =
        _watchCurrentUserUseCase(usecaseStream.NoParams());

    currentUserStreamOrFailure.fold(
      (l) => null,
      (currentUserStream) {
        _userSubscription?.cancel();
        _userSubscription = currentUserStream.listen(
          (currentUser) async {
            final allWalletStreamOrFailure = _watchWalletsUseCase(
              usecaseStream.NoParams(),
            );

            allWalletStreamOrFailure.fold(
              (l) => FailureSelectedWalletState(''),
              (allWalletsStream) {
                _allWalletsSubscription?.cancel();
                _allWalletsSubscription = allWalletsStream.listen(
                  (wallets) {
                    add(AllWalletStreamSyncedEvent(
                      wallets,
                      currentUser.selectedDate,
                    ));
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Stream<SelectedWalletState> _streamSynced(
      WalletModel selectedWallet, DateTime? selectedDate) async* {
    yield LoadingSelectedWalletState();

    final failureOrTransactions = await _getTransactionsByWalletUseCase(
      GetTransactionsByWalletUseCaseParams(
        walletId: selectedWallet.id!,
        selectedDate: selectedDate,
      ),
    );

    yield failureOrTransactions.fold((_) {
      return LoadedSelectedWalletState(selectedWallet, [], {});
    }, (transactions) {
      final groupedTransactions = groupBy(
        transactions,
        (transaction) => DateFormat('dd MMM, yyyy')
            .format((transaction! as TransactionModel).date!),
      );

      return LoadedSelectedWalletState(
        selectedWallet,
        transactions,
        groupedTransactions,
      );
    });
  }

  Stream<SelectedWalletState> _allWalletsStreamSynced(
      List<WalletModel> wallets, DateTime? selectedDate) async* {
    var allTransactions = <TransactionModel>[];

    wallets.forEach((wallet) async {
      final failureOrTransactions = await _getTransactionsByWalletUseCase(
        GetTransactionsByWalletUseCaseParams(
          walletId: wallet.id!,
          selectedDate: selectedDate,
        ),
      );

      failureOrTransactions.fold(
        (l) => FailureSelectedWalletState(''),
        (transactions) => allTransactions.addAll(transactions),
      );
    });

    final groupedTransactions = groupBy(
      allTransactions,
      (transaction) => DateFormat('dd MMM, yyyy')
          .format((transaction! as TransactionModel).date!),
    );

    yield LoadedAllWalletsWalletState(allTransactions, groupedTransactions);
  }

  Stream<SelectedWalletState> _setEmpty() async* {
    yield EmptySelectedWalletState();
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _userSubscription?.cancel();
    _allWalletsSubscription?.cancel();
    return super.close();
  }
}
