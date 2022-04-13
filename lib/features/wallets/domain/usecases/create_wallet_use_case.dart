import 'package:budget_nerd/features/transactions/domain/usecases/calculate_wallet_balance.dart';
import 'package:budget_nerd/features/transactions/domain/usecases/create_transaction.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/update_balance_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/utils/futures.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/db/tables/transactions.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';

import 'get_wallet_by_id_usecase.dart';

class CreateWalletUseCase implements UseCase<int, CreateWalletUseCaseParams> {
  WalletsRepository repository;

  CreateWalletUseCase(this.repository);

  @override
  Future<Either<Failure, int>> call(CreateWalletUseCaseParams params) async {
    final newWalletIdOrFailure = await repository.createWallet(params.wallet);
    // #TODO: add sync for init transaction
    if (params.wallet.balance != 0 && params.wallet.balance != null) {
      unawaited(_createInitialTransaction(params.wallet, newWalletIdOrFailure));
    }

    return newWalletIdOrFailure.fold((failure) => Left(failure),
        (newWalletId) async {
      final createdWalletOrFailure = await sl<GetWalletByIdUseCase>()(
          GetWalletByIdUseCaseParams(walletId: newWalletId));

      // TODO
      // createdWalletOrFailure.fold((failure) => Left(failure), (createdWallet) {
      //   sl<SyncRemoteDataUseCase>()(
      //       SyncRemoteDataUseCaseParams(wallets: [createdWallet]));
      // });

      final currentUserOrFailure =
          await sl<GetCurrentUserUseCase>()(NoParams());
      currentUserOrFailure.fold((failure) => Left(failure),
          (currentUser) async {
        if (currentUser.selectedWalletId == null) {
          final userToUpdate = currentUser.copyWith(
            selectedWalletId: newWalletId,
          );

          await sl<UpdateCurrentUserUseCase>()(
              UpdateCurrentUserUseCaseParams(user: userToUpdate));
        }
      });

      return Right(newWalletId);
    });
  }

  Future<bool> _createInitialTransaction(
      WalletModel wallet, Either<Failure, int> response) async {
    // final transaction = TransactionsCompanion(
    //   type: Value(TransactionTypes.initialTransaction),
    //   date: Value(DateTime.now()),
    //   note: Value('Starting Balance'),
    //   currencyCode: Value(wallet.currencyCode),
    //   amount: Value(wallet.balance!),
    //   walletId: Value(wallet.id!),
    // );

    final transactionModel = TransactionModel(
      type: TransactionTypes.initialTransaction,
      date: DateTime.now(),
      note: 'Starting Balance',
      currencyCode: wallet.currencyCode,
      currencySymbolNative: wallet.currencySymbolNative,
      amount: wallet.balance!,
      walletId: wallet.id!,
      createdAt: DateTime.now(),
      id: 0,
      updatedAt: DateTime.now(),
    );

    final transactionOrFailure = await sl<CreateTransactionUseCase>()(
        CreateTransactionUseCaseParams(transaction: transactionModel));

    await transactionOrFailure.fold((_) {},
        (TransactionModel transaction) async {
      return await sl<CalculateWalletBalanceUseCase>()(
          CalculatetransactionWalletBalanceUseCaseParams(
              wallet: wallet, transaction: transaction));
    });

    await sl<UpdateBalanceUseCase>()(
        UpdateBalanceUseCaseParams(wallet: wallet));
    return Future.value(true);
  }
}

class CreateWalletUseCaseParams extends Equatable {
  final WalletModel wallet;

  CreateWalletUseCaseParams({required this.wallet});

  @override
  List<Object> get props => [wallet];
}
