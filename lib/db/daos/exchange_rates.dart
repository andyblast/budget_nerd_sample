import 'package:moor/moor.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/moor.dart' as namedMoor;
import 'package:budget_nerd/db/tables/tables.dart';

part 'exchange_rates.g.dart';

@UseDao(tables: [ExchangeRates])
class ExchangeRatesDao extends DatabaseAccessor<MyDatabase>
    with _$ExchangeRatesDaoMixin {
  final MyDatabase db;

  // Called by the AppDatabase class
  ExchangeRatesDao(this.db) : super(db);

  Future upsertExchangeRate(namedMoor.ExchangeRate rate) {
    return into(exchangeRates).insertOnConflictUpdate(rate);
  }

  Future<List<namedMoor.ExchangeRate>> getAll() => select(exchangeRates).get();

  Future<List<namedMoor.ExchangeRate>> getFirstRate() => (select(exchangeRates)
        ..orderBy([
          (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.asc)
        ])
        ..limit(1))
      .get();
}
