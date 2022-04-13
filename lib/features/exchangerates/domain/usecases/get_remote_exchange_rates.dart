import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/exchangerates/domain/repositories/index.dart';

class GetRemoteExchangeRatesUseCase
    implements UseCase<ExchangeRateModel, NoParams> {
  final ExchangeRatesRepository repository;

  GetRemoteExchangeRatesUseCase(this.repository);

  @override
  Future<Either<Failure, ExchangeRateModel>> call(NoParams params) async {
    return await repository.getRemoteRate();
  }
}
