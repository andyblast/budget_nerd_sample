import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';

class GetWalletByIdUseCase
    implements UseCase<WalletModel, GetWalletByIdUseCaseParams> {
  final WalletsRepository repository;

  GetWalletByIdUseCase(this.repository);

  @override
  Future<Either<Failure, WalletModel>> call(
      GetWalletByIdUseCaseParams params) async {
    final walletOrFailure = await repository.getWalletById(params.walletId);
    return walletOrFailure;
  }
}

class GetWalletByIdUseCaseParams extends Equatable {
  final int walletId;

  GetWalletByIdUseCaseParams({required this.walletId});
  @override
  List<Object> get props => [walletId];
}
