import 'package:moor/moor.dart';
import 'package:uuid/uuid.dart';

final _uuid = Uuid();

class ExchangeRates extends Table {
  TextColumn get id => text().clientDefault(() => _uuid.v4()).nullable()();
  TextColumn get base => text().withLength(min: 1, max: 10)();
  DateTimeColumn get date => dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now()).nullable()();
  TextColumn get rates => text().withLength(min: 1)();

  @override
  Set<Column> get primaryKey => {base};
}
