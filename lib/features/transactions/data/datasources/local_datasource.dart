import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/transactions/data/models/transaction.dart';

abstract class TransactionsLocalDataSource {
  Future<int> createTransaction(TransactionModel transactionModel);
  Future<void> deleteTransaction(TransactionModel transactionModel);
  Future<void> updateTransaction(TransactionModel transactionModel);
  Future<void> detachFromCategory(int categoryId);

  Future<List<TransactionModel>> getAllTransactions();
  Stream<List<TransactionModel>> watchAllTransactions();
  Stream<List<TransactionModel>> watchTransactionsByWallet(int walletId);
  Future<List<TransactionModel>> getTransactionsByWallet(
    int walletId,
    DateTime? selectedDate,
  );
  Future<TransactionModel> getTransactionById(int transactionId);

  Future<void> deleteTransactionsByWallet(int walletId);
}

class TransactionsLocalDataSourceImpl implements TransactionsLocalDataSource {
  final MyDatabase database;

  TransactionsLocalDataSourceImpl(this.database);

  @override
  Future<int> createTransaction(TransactionModel transactionModel) async {
    return await database.transactionDao
        .createTransaction(transactionModel.toMoor());
  }

  @override
  Future<void> deleteTransaction(TransactionModel transactionModel) async {
    return await database.transactionDao
        .deleteTransaction(transactionModel.toMoor());
  }

  @override
  Future<void> updateTransaction(TransactionModel transactionModel) async {
    return await database.transactionDao
        .updateTransaction(transactionModel.toMoor());
  }

  @override
  Future<List<TransactionModel>> getAllTransactions() async {
    final transactions = await database.transactionDao.getAllTransactions();
    return transactions.map((t) => TransactionModel.fromMoor(t)).toList();
  }

  @override
  Stream<List<TransactionModel>> watchTransactionsByWallet(int walletId) {
    final transactions =
        database.transactionDao.watchTransactionsByWallet(walletId);
    return transactions.map((list) =>
        list.map((t) => TransactionModel.fromMoorWithJoins(t)).toList());
  }

  @override
  Stream<List<TransactionModel>> watchAllTransactions() {
    final transactions = database.transactionDao.watchAllTransactions();
    return transactions
        .map((list) => list.map((t) => TransactionModel.fromMoor(t)).toList());
  }

  @override
  Future<List<TransactionModel>> getTransactionsByWallet(
      int walletId, DateTime? selectedDate) async {
    final transactions = await database.transactionDao.getTransactionsByWallet(
      walletId,
      selectedDate,
    );
    return transactions
        .map((t) => TransactionModel.fromMoorWithJoins(t))
        .toList();
  }

  @override
  Future<TransactionModel> getTransactionById(int transactionId) async {
    final response =
        await database.transactionDao.getTransactionById(transactionId);
    return TransactionModel.fromMoor(response);
  }

  @override
  Future<void> deleteTransactionsByWallet(int walletId) async {
    return await database.transactionDao.deleteTransactionsByWallet(walletId);
  }

  @override
  Future<void> detachFromCategory(int categoryId) async {
    return await database.transactionDao.detachFromCategory(categoryId);
  }
}
