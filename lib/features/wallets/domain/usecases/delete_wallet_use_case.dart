import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';

import 'get_wallets.dart';

class DeleteWalletUseCase implements UseCase<bool, DeleteWalletUseCaseParams> {
  WalletsRepository walletRepository;
  TransactionsRepository transactionRepository;

  DeleteWalletUseCase(this.walletRepository, this.transactionRepository);

  @override
  Future<Either<Failure, bool>> call(DeleteWalletUseCaseParams params) async {
    var walletDeletedOrError =
        await walletRepository.deleteWallet(params.wallet);

    await walletDeletedOrError.fold((_) {}, (r) async {
      final allWalletsOrFailure = await sl<GetWalletsUseCase>()(NoParams());

      await allWalletsOrFailure.fold((_) {}, (allWallets) async {
        final currentUserOrFailure =
            await sl<GetCurrentUserUseCase>()(NoParams());

        await currentUserOrFailure.fold((_) {}, (currentUser) async {
          UserModel userToUpdate;

          if (allWallets.isEmpty) {
            userToUpdate = currentUser.copyWith(
              selectedWalletId: null,
            );
          } else {
            userToUpdate = currentUser.copyWith(
              selectedWalletId: allWallets.last.id,
            );
          }
          await sl<UpdateCurrentUserUseCase>()(
              UpdateCurrentUserUseCaseParams(user: userToUpdate));
        });
      });
    });

    // unawaited(sl<DeleteRemoteWalletUseCase>()(
    //   DeleteRemoteWalletUseCaseParams(walletId: params.wallet.id.toString()),
    // ));

    return walletDeletedOrError;
  }
}

class DeleteWalletUseCaseParams extends Equatable {
  final WalletModel wallet;

  DeleteWalletUseCaseParams({required this.wallet});

  @override
  List<Object> get props => [wallet];
}
