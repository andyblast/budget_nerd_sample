import 'package:moor/moor.dart';

class CbRfRates extends Table {
  TextColumn get currencyCode => text().withLength(min: 1, max: 10)();
  TextColumn get currencyId => text().withLength(min: 1, max: 10)();
  IntColumn get nominal => integer().withDefault(Constant(1))();
  TextColumn get nameInRussian => text().nullable()();
  RealColumn get value => real().withDefault(const Constant(0.0))();
  RealColumn get previous => real().withDefault(const Constant(0.0))();

  @override
  Set<Column> get primaryKey => {currencyCode};
}
