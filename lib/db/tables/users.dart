import 'package:moor/moor.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstName => text().nullable()();
  TextColumn get lastName => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get authToken => text().nullable()();
  TextColumn get photoUrl => text().nullable()();
  TextColumn get homeCurrency => text().nullable()();
  TextColumn get locale => text().nullable()();
  IntColumn get selectedWalletId => integer().nullable()();
  BoolColumn get selectedAllWallets =>
      boolean().clientDefault(() => false).nullable()();
  DateTimeColumn get selectedDate =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();

  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get syncedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
