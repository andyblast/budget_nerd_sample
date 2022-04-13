import 'package:budget_nerd/features/transactions/domain/usecases/index.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/db/tables/transactions.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';

class UpdateBalanceUseCase
    implements UseCase<bool, UpdateBalanceUseCaseParams> {
  WalletsRepository repository;
  GetTransactionsByWalletUseCase getTransactionsByWalletUseCase;

  UpdateBalanceUseCase(this.repository, this.getTransactionsByWalletUseCase);

  @override
  Future<Either<Failure, bool>> call(UpdateBalanceUseCaseParams params) async {
    var transationsOrError = await getTransactionsByWalletUseCase(
        GetTransactionsByWalletUseCaseParams(walletId: params.wallet.id!));

    return transationsOrError.fold((_) => Left(_),
        (List<TransactionModel> transactions) async {
      final balance = transactions.fold(0.0, (double value, transaction) {
        if (transaction.type == TransactionTypes.income ||
            transaction.type == TransactionTypes.initialTransaction) {
          if (transaction.amountInWalletCurrency != null) {
            return value + transaction.amountInWalletCurrency!;
          } else {
            return value;
          }
        } else {
          if (transaction.amountInWalletCurrency != null) {
            return value - transaction.amountInWalletCurrency!;
          } else {
            return value;
          }
        }
      });
      return repository.updateWallet(params.wallet.copyWith(balance: balance));
    });
  }
}

class UpdateBalanceUseCaseParams extends Equatable {
  final WalletModel wallet;

  UpdateBalanceUseCaseParams({required this.wallet});

  @override
  List<Object> get props => [wallet];
}
