import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/transactions/data/models/transaction.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';
import 'package:budget_nerd/features/transactions/domain/repositories/transactions_repository.dart';
import 'package:budget_nerd/injection_container.dart';

import 'get_transaction_by_id.dart';

class CreateTransactionUseCase
    implements UseCase<TransactionModel, CreateTransactionUseCaseParams> {
  TransactionsRepository repository;

  CreateTransactionUseCase(this.repository);

  @override
  Future<Either<Failure, TransactionModel>> call(
      CreateTransactionUseCaseParams params) async {
    final transactionIdOrFailure =
        await repository.createTransaction(params.transaction);

    return transactionIdOrFailure.fold((failure) => Left(failure),
        (transactionId) async {
      final createdTransactionOrFailure = await sl<GetTransactionByIdUseCase>()(
          GetTransactionByIdUseCaseParams(transactionId: transactionId));

      return createdTransactionOrFailure.fold((failure) => Left(failure),
          (createdTransaction) => Right(createdTransaction));
    });
  }
}

class CreateTransactionUseCaseParams extends Equatable {
  final TransactionModel transaction;

  CreateTransactionUseCaseParams({required this.transaction});

  @override
  List<Object> get props => [transaction];
}
