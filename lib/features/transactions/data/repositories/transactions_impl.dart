import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/transactions/data/datasources/local_datasource.dart';
import 'package:budget_nerd/features/transactions/data/models/transaction.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:budget_nerd/features/transactions/domain/repositories/transactions_repository.dart';

class TransactionsRepositoryImpl implements TransactionsRepository {
  final MyDatabase database;
  final TransactionsLocalDataSourceImpl localDataSource;

  TransactionsRepositoryImpl({
    required this.database,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, int>> createTransaction(
      TransactionModel transaction) async {
    var transactionId = await localDataSource.createTransaction(transaction);
    return Right(transactionId);
  }

  @override
  Future<Either<Failure, List<TransactionModel>>> getAllTransactions() async {
    final transactions = await localDataSource.getAllTransactions();
    return Right(transactions);
  }

  @override
  Future<Either<Failure, List<TransactionModel>>> getTransactionsByWallet(
      int walletId, DateTime? selectedDate) async {
    final transactions =
        await localDataSource.getTransactionsByWallet(walletId, selectedDate);
    return Right(transactions);
  }

  @override
  Future<Either<Failure, TransactionModel>> getTransactionById(
      int transactionId) async {
    final response = await localDataSource.getTransactionById(transactionId);
    return Right(response);
  }

  @override
  Future<Either<Failure, bool>> deleteTransaction(
      TransactionModel transaction) async {
    await localDataSource.deleteTransaction(transaction);
    return Right(true);
  }

  @override
  Future<Either<Failure, bool>> updateTransaction(
      TransactionModel transaction) async {
    await localDataSource.updateTransaction(transaction);
    return Right(true);
  }

  @override
  Either<Failure, Stream<List<TransactionModel>>> watchAllTransactions() {
    return Right(localDataSource.watchAllTransactions());
  }

  @override
  Either<Failure, Stream<List<TransactionModel>>> watchTransactionsByWallet(
      int walletId) {
    return Right(localDataSource.watchTransactionsByWallet(walletId));
  }

  @override
  Future<Either<Failure, bool>> deleteTransactionsByWallet(int walletId) async {
    await localDataSource.deleteTransactionsByWallet(walletId);
    return Right(true);
  }

  @override
  Future<Either<Failure, bool>> detachFromCategory(int categoryId) async {
    await localDataSource.detachFromCategory(categoryId);
    return Right(true);
  }
}
