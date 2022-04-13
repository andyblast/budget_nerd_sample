import 'package:moor/moor.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/moor.dart' as namedMoor;
import 'package:budget_nerd/db/tables/joins/transactions/transaction_with_joins.dart';
import 'package:budget_nerd/db/tables/tables.dart';

part 'transactions.g.dart';

@UseDao(tables: [Transactions, Wallets, Categories])
class TransactionDao extends DatabaseAccessor<MyDatabase>
    with _$TransactionDaoMixin {
  final MyDatabase db;

  // Called by the AppDatabase class
  TransactionDao(this.db) : super(db);

  Future<int> createTransaction(
          Insertable<namedMoor.Transaction> transaction) =>
      into(transactions).insert(transaction);

  Future deleteTransaction(namedMoor.Transaction transaction) =>
      delete(transactions).delete(transaction);

  Future deleteTransactionsByWallet(int walletId) {
    return (delete(transactions)..where((t) => t.walletId.equals(walletId)))
        .go();
  }

  Future<List<namedMoor.Transaction>> getAllTransactions() =>
      _defaultScope().get();

  Future<List<TransactionWithJoins>> getTransactionsByWallet(
      int walletId, DateTime? selectedDate) async {
    final query = await _joinTables(
            (_defaultScope()..where((t) => t.walletId.equals(walletId))))
        .get();

    final allTransactions = query.map((resultRow) {
      return TransactionWithJoins(
          transaction: resultRow.readTable(transactions),
          wallet: resultRow.readTable(wallets),
          category: resultRow.readTable(categories));
    }).toList();

    if (selectedDate != null) {
      final selectedByDate = allTransactions.where((element) {
        final isMonth = element.transaction.date!.month == selectedDate.month;
        final isYear = element.transaction.date!.year == selectedDate.year;
        return isMonth && isYear;
      }).toList();

      return selectedByDate;
    } else {
      return allTransactions;
    }
  }

  Future<namedMoor.Transaction> getTransactionById(int transactionId) =>
      (_defaultScope()..where((el) => el.id.equals(transactionId))).getSingle();

  Future updateTransaction(namedMoor.Transaction transaction) =>
      update(transactions)
          .replace(transaction.copyWith(updatedAt: DateTime.now()));

  Future detachFromCategory(int categoryId) {
    return (update(transactions)..where((t) => t.categoryId.equals(categoryId)))
        .write(TransactionsCompanion(
      categoryId: Value(null),
      updatedAt: Value(DateTime.now()),
    ));
  }

  Stream<List<namedMoor.Transaction>> watchAllTransactions() {
    return _defaultScope().watch();
  }

  Stream<List<TransactionWithJoins>> watchTransactionsByWallet(int walletId) {
    final query = _joinTables(
            (_defaultScope()..where((t) => t.walletId.equals(walletId)))
              ..where((t) => t.type.isNotIn([2])))
        .watch();
    return _queryWithJoinsStream(query);
  }

  Stream<namedMoor.Transaction> watchTransactionWithId(int id) {
    return (_defaultScope()..where((t) => t.id.equals(id))).watchSingle();
  }

  SimpleSelectStatement<$TransactionsTable, namedMoor.Transaction>
      _defaultScope() {
    return select(transactions)
      ..orderBy(
          [(t) => OrderingTerm(expression: t.date, mode: OrderingMode.desc)]);
  }

  JoinedSelectStatement<HasResultSet, dynamic> _joinTables(
      SimpleSelectStatement<$TransactionsTable, namedMoor.Transaction> query) {
    return query.join(
      [
        innerJoin(wallets, wallets.id.equalsExp(transactions.walletId)),
        leftOuterJoin(
            categories, categories.id.equalsExp(transactions.categoryId)),
      ],
    );
  }

  Stream<List<TransactionWithJoins>> _queryWithJoinsStream(
      Stream<List<TypedResult>> query) {
    return query.map(
      (rows) => rows.map(
        (row) {
          return TransactionWithJoins(
              transaction: row.readTable(transactions),
              wallet: row.readTable(wallets),
              category: row.readTable(categories));
        },
      ).toList(),
    );
  }
}
