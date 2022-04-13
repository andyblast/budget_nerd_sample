import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/network/network_info.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/exchangerates/domain/repositories/index.dart';
import 'package:budget_nerd/features/exchangerates/domain/usecases/get_remote_exchange_rates.dart';

class RemoteSyncExchangeRatesUseCase implements UseCase<bool, NoParams> {
  final NetworkInfo networkInfo;

  GetRemoteExchangeRatesUseCase getRemoteExchangeRatesUseCase;
  final ExchangeRatesRepository repository;
  RemoteSyncExchangeRatesUseCase(
      this.getRemoteExchangeRatesUseCase, this.repository, this.networkInfo);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    if (await networkInfo.isConnected) {
      final remoteRatesOrFailure = await getRemoteExchangeRatesUseCase(params);
      remoteRatesOrFailure.fold((_) => {}, (ExchangeRateModel rate) {
        repository.upsertRate(rate);
      });
    } else {
      print('=====NO CONNECTION SKIP RATES SYNCING======');
    }
    return Future<Either<Failure, bool>>.value(Right(true));
  }
}
