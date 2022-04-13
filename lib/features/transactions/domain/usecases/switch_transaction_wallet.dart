import 'package:budget_nerd/features/transactions/domain/usecases/index.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/index.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';

class SwitchWalletTransactionUseCase
    implements UseCase<bool, SwitchWalletTransactionUseCaseParams> {
  TransactionsRepository repository;

  SwitchWalletTransactionUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      SwitchWalletTransactionUseCaseParams params) async {
    await sl<DeleteTransactionUseCase>()(
        DeleteTransactionUseCaseParams(transaction: params.currentTransaction));
    await sl<UpdateBalanceUseCase>()(
        UpdateBalanceUseCaseParams(wallet: params.currentTransaction.wallet!));

    final transactionOrFailure = await sl<CreateTransactionUseCase>()(
        CreateTransactionUseCaseParams(transaction: params.newTransaction));
    await transactionOrFailure.fold((_) {},
        (TransactionModel transaction) async {
      return await sl<CalculateWalletBalanceUseCase>()(
          CalculatetransactionWalletBalanceUseCaseParams(
              wallet: params.newWallet, transaction: transaction));
    });
    await sl<UpdateBalanceUseCase>()(
        UpdateBalanceUseCaseParams(wallet: params.newWallet));

    return Future.value(Right(true));
  }
}

class SwitchWalletTransactionUseCaseParams extends Equatable {
  final WalletModel newWallet;
  final TransactionModel currentTransaction;
  final TransactionModel newTransaction;

  SwitchWalletTransactionUseCaseParams({
    required this.currentTransaction,
    required this.newTransaction,
    required this.newWallet,
  });

  @override
  List<Object> get props => [currentTransaction, newTransaction, newWallet];
}
