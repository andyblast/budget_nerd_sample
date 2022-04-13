import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/currencies/data/models/currency_model.dart';

abstract class CurrenciesRepository {
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies();
}
