import 'package:budget_nerd/features/transactions/domain/usecases/update_transaction.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/exchangerates/domain/index.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';
import 'package:budget_nerd/features/transactions/domain/repositories/transactions_repository.dart';

class CalculateWalletBalanceUseCase
    implements UseCase<bool, CalculatetransactionWalletBalanceUseCaseParams> {
  TransactionsRepository repository;
  GetLocalExchangeRatesUseCase getLocalExchangeRatesUseCase;
  UpdateTransactionUseCase updateTransationUseCase;

  CalculateWalletBalanceUseCase(this.repository,
      this.getLocalExchangeRatesUseCase, this.updateTransationUseCase);

  @override
  Future<Either<Failure, bool>> call(
      CalculatetransactionWalletBalanceUseCaseParams params) async {
    var rateOrFailure = await getLocalExchangeRatesUseCase(NoParams());
    rateOrFailure.fold((_) {
      print('==========failure========');
    }, (ExchangeRateModel rate) {
      var amount;
      var bankRate = rate.rates[params.wallet.currencyCode];
      var transactionRate = rate.rates[params.transaction.currencyCode];
      if (bankRate != null && transactionRate != null) {
        amount = (bankRate / transactionRate) * params.transaction.amount;
      } else {
        amount = params.transaction.amount;
      }

      updateTransationUseCase(
        UpdateTransactionUseCaseParams(
          transaction:
              params.transaction.copyWith(amountInWalletCurrency: amount),
        ),
      );
    });
    return Future.value(Right(true));
  }
}

class CalculatetransactionWalletBalanceUseCaseParams extends Equatable {
  final TransactionModel transaction;
  final WalletModel wallet;

  CalculatetransactionWalletBalanceUseCaseParams(
      {required this.transaction, required this.wallet});

  @override
  List<Object> get props => [transaction];
}
