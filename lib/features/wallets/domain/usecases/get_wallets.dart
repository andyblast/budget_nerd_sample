import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';
import '../index.dart';

class GetWalletsUseCase implements UseCase<List<WalletModel>, NoParams> {
  final WalletsRepository repository;

  GetWalletsUseCase(this.repository);

  @override
  Future<Either<Failure, List<WalletModel>>> call(NoParams params) async {
    return await repository.getWallets();
  }
}
