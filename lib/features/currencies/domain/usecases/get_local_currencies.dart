import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/currencies/domain/repositories/currencies_repository.dart';

class GetLocalCurrenciesUseCase
    implements UseCase<List<CurrencyModel>, NoParams> {
  final CurrenciesRepository repository;

  GetLocalCurrenciesUseCase(this.repository);

  @override
  Future<Either<Failure, List<CurrencyModel>>> call(NoParams params) async {
    return await repository.getCurrencies();
  }
}
