import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';

abstract class ExchangeRatesLocalDataSource {
  Future<void> upsertRate(ExchangeRateModel rate);
  Future<ExchangeRateModel?> getFirstRate();
}

class ExchangeRatesLocalDataSourceImpl implements ExchangeRatesLocalDataSource {
  final MyDatabase database;

  ExchangeRatesLocalDataSourceImpl({required this.database});

  @override
  Future<ExchangeRateModel?> getFirstRate() async {
    final response = await database.exchangeRatesDao.getFirstRate();
    if (response.isEmpty) {
      return null;
    }
    return ExchangeRateModel.fromMoor(response[0]);
  }

  @override
  Future<void> upsertRate(ExchangeRateModel rate) async {
    return await database.exchangeRatesDao.upsertExchangeRate(rate.toMoor());
  }
}
