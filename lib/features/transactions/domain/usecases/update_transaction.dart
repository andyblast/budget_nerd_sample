import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/transactions/data/models/transaction.dart';
import 'package:budget_nerd/features/transactions/domain/repositories/transactions_repository.dart';

class UpdateTransactionUseCase
    implements UseCase<bool, UpdateTransactionUseCaseParams> {
  TransactionsRepository repository;

  UpdateTransactionUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(
      UpdateTransactionUseCaseParams params) async {
    final updateOrFailure =
        await repository.updateTransaction(params.transaction);

    // updateOrFailure.fold((failure) => Left(failure), (res) {
    //   sl<SyncRemoteDataUseCase>()(
    //       SyncRemoteDataUseCaseParams(transactions: [params.transaction]));
    //   ;
    // });
    return Right(true);
  }
}

class UpdateTransactionUseCaseParams extends Equatable {
  final TransactionModel transaction;

  UpdateTransactionUseCaseParams({required this.transaction});

  @override
  List<Object> get props => [transaction];
}
