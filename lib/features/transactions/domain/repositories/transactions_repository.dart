import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/transactions/data/models/transaction.dart';

abstract class TransactionsRepository {
  Future<Either<Failure, List<TransactionModel>>> getAllTransactions();
  Future<Either<Failure, List<TransactionModel>>> getTransactionsByWallet(
      int walletId, DateTime? selectedDate);
  Future<Either<Failure, TransactionModel>> getTransactionById(
      int transactionId);

  Either<Failure, Stream<List<TransactionModel>>> watchAllTransactions();
  Either<Failure, Stream<List<TransactionModel>>> watchTransactionsByWallet(
      int walletId);

  Future<Either<Failure, int>> createTransaction(TransactionModel transaction);
  Future<Either<Failure, bool>> deleteTransaction(TransactionModel transaction);
  Future<Either<Failure, bool>> updateTransaction(TransactionModel transaction);
  Future<Either<Failure, bool>> deleteTransactionsByWallet(int walletId);
  Future<Either<Failure, bool>> detachFromCategory(int categoryId);
}
