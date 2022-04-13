import 'package:moor/moor.dart';

enum CategoryTypes { income, expense }

class Categories extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get title => text()();
  BoolColumn get isDefault => boolean().clientDefault(() => false).nullable()();
  IntColumn get type => intEnum<CategoryTypes>()();
  TextColumn get color => text()();
  TextColumn get icon => text()();

  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get updatedAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  DateTimeColumn get syncedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
