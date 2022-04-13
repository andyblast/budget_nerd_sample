import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';

class UpdateWalletUseCase implements UseCase<bool, UpdateWalletUseCaseParams> {
  WalletsRepository repository;

  UpdateWalletUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(UpdateWalletUseCaseParams params) async {
    final updateOrFailure = await repository.updateWallet(params.wallet);

    // updateOrFailure.fold((failure) => Left(failure), (res) {
    //   sl<SyncRemoteDataUseCase>()(
    //       SyncRemoteDataUseCaseParams(wallets: [params.wallet]));
    // });
    return Right(true);
  }
}

class UpdateWalletUseCaseParams extends Equatable {
  final WalletModel wallet;

  UpdateWalletUseCaseParams({required this.wallet});

  @override
  List<Object> get props => [wallet];
}
