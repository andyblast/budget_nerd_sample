import 'package:moor/moor.dart';

enum TransactionTypes { income, expense, initialTransaction }

class Transactions extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  DateTimeColumn get date =>
      dateTime().nullable().clientDefault(() => DateTime.now())();

  IntColumn get walletId =>
      integer().customConstraint('REFERENCES wallets(id)')();

  IntColumn get categoryId =>
      integer().nullable().customConstraint('NULL REFERENCES categories(id)')();

  TextColumn get note => text().nullable()();
  TextColumn get currencyCode => text()();
  TextColumn get currencySymbolNative => text()();

  RealColumn get amount => real().withDefault(const Constant(0.0))();
  RealColumn get amountInWalletCurrency => real().nullable()();
  IntColumn get type => intEnum<TransactionTypes>()();

  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get syncedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
