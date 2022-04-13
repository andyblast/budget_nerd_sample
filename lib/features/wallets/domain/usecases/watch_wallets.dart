import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';
import '../index.dart';

class WatchWalletsUseCase
    implements UseCaseStream<List<WalletModel>, NoParams> {
  final WalletsRepository repository;

  WatchWalletsUseCase(this.repository);

  @override
  Either<Failure, Stream<List<WalletModel>>> call(NoParams params) {
    return repository.watchWallets();
  }
}
