import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/transactions/data/models/transaction.dart';
import 'package:budget_nerd/features/transactions/domain/repositories/transactions_repository.dart';

class DeleteTransactionUseCase
    implements UseCase<bool, DeleteTransactionUseCaseParams> {
  TransactionsRepository repository;

  DeleteTransactionUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      DeleteTransactionUseCaseParams params) async {
    var transactionDeletedOrError =
        await repository.deleteTransaction(params.transaction);

    // unawaited(sl<DeleteRemoteTransactionUseCase>()(
    //   DeleteRemoteTransactionUseCaseParams(
    //       transactionId: params.transaction.id.toString()),
    // ));

    return transactionDeletedOrError;
  }
}

class DeleteTransactionUseCaseParams extends Equatable {
  final TransactionModel transaction;

  DeleteTransactionUseCaseParams({required this.transaction});

  @override
  List<Object> get props => [transaction];
}
