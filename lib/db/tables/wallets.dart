import 'package:moor/moor.dart';

class Wallets extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text().withLength(min: 1, max: 32)();
  TextColumn get currencyCode => text().withLength(min: 1)();
  TextColumn get currencySymbolNative => text()();
  RealColumn get balance =>
      real().withDefault(const Constant(0.0)).nullable()();

  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get syncedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
