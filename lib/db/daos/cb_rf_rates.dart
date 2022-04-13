import 'package:moor/moor.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/moor.dart' as namedMoor;
import 'package:budget_nerd/db/tables/cb_rf_rates.dart' show CbRfRates;

part 'cb_rf_rates.g.dart';

@UseDao(tables: [CbRfRates])
class CbRfRatesDao extends DatabaseAccessor<MyDatabase>
    with _$CbRfRatesDaoMixin {
  final MyDatabase db;

  // Called by the AppDatabase class
  CbRfRatesDao(this.db) : super(db);

  Future createCbRfRate(Insertable<namedMoor.CbRfRate> rate) =>
      into(cbRfRates).insert(rate);

  Future updateCbRfRate(namedMoor.CbRfRate rate) =>
      update(cbRfRates).replace(rate);

  Future upsertCbRfRate(namedMoor.CbRfRate rate) {
    return into(cbRfRates).insertOnConflictUpdate(rate);
  }

  Future deleteCbRfRate(namedMoor.CbRfRate rate) =>
      delete(cbRfRates).delete(rate);

  Future<List<namedMoor.CbRfRate>> getAllCbRfRates() => select(cbRfRates).get();

  Future<namedMoor.CbRfRate> getCbRfRateByCode(String currencyCode) =>
      (select(cbRfRates)..where((t) => t.currencyCode.equals(currencyCode)))
          .getSingle();
}
