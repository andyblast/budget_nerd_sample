import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';

class GetTransactionByIdUseCase
    implements UseCase<TransactionModel, GetTransactionByIdUseCaseParams> {
  final TransactionsRepository repository;

  GetTransactionByIdUseCase(this.repository);

  @override
  Future<Either<Failure, TransactionModel>> call(
      GetTransactionByIdUseCaseParams params) async {
    final transactionOrFailure =
        await repository.getTransactionById(params.transactionId);
    return transactionOrFailure;
  }
}

class GetTransactionByIdUseCaseParams extends Equatable {
  final int transactionId;

  GetTransactionByIdUseCaseParams({required this.transactionId});
  @override
  List<Object> get props => [transactionId];
}
