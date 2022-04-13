import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/exchangerates/data/datasources/index.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/exchangerates/domain/repositories/index.dart';

class ExchangeRatesRepositoryImpl implements ExchangeRatesRepository {
  final MyDatabase database;
  final ExchangeRatesLocalDataSource localDataSource;
  final ExchangeratesRemoteDataSource remoteDataSource;

  ExchangeRatesRepositoryImpl({
    required this.database,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, bool>> upsertRate(ExchangeRateModel rate) async {
    await localDataSource.upsertRate(rate);
    return Right(true);
  }

  @override
  Future<Either<Failure, ExchangeRateModel>> getFirstRate() async {
    final response = await localDataSource.getFirstRate();
    return response == null ? Left(EmptyDataFailure()) : Right(response);
  }

  @override
  Future<Either<Failure, ExchangeRateModel>> getRemoteRate() async {
    final response = await remoteDataSource.getRates();
    return response == null ? Left(EmptyDataFailure()) : Right(response);
  }
}
