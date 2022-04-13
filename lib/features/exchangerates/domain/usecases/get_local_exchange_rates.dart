import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/exchangerates/domain/repositories/index.dart';

class GetLocalExchangeRatesUseCase
    implements UseCase<ExchangeRateModel, NoParams> {
  final ExchangeRatesRepository repository;

  GetLocalExchangeRatesUseCase(this.repository);

  @override
  Future<Either<Failure, ExchangeRateModel>> call(NoParams params) async {
    return await repository.getFirstRate();
  }
}
