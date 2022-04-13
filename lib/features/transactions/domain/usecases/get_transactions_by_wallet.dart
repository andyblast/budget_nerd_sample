import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/repositories/transactions_repository.dart';

class GetTransactionsByWalletUseCase
    implements
        UseCase<List<TransactionModel>, GetTransactionsByWalletUseCaseParams> {
  TransactionsRepository repository;

  GetTransactionsByWalletUseCase(this.repository);

  @override
  Future<Either<Failure, List<TransactionModel>>> call(
      GetTransactionsByWalletUseCaseParams params) async {
    return await repository.getTransactionsByWallet(
      params.walletId,
      params.selectedDate,
    );
  }
}

class GetTransactionsByWalletUseCaseParams extends Equatable {
  final int walletId;
  final DateTime? selectedDate;

  GetTransactionsByWalletUseCaseParams({
    this.selectedDate,
    required this.walletId,
  });

  @override
  List<Object> get props => [walletId];
}
