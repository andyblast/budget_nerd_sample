import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';

abstract class ExchangeRatesRepository {
  Future<Either<Failure, ExchangeRateModel>> getRemoteRate();
  Future<Either<Failure, ExchangeRateModel>> getFirstRate();

  Future<Either<Failure, bool>> upsertRate(ExchangeRateModel rate);
}
