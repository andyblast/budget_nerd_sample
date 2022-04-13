import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/currencies/domain/repositories/currencies_repository.dart';

class CurrenciesRepositoryImpl implements CurrenciesRepository {
  final CurrenciesLocalDataSource localDataSource;

  CurrenciesRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies() async {
    final currencies = await localDataSource.getCurrencies();
    return Right(currencies);
  }
}
