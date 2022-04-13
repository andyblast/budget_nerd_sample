import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';

abstract class WalletsRepository {
  Future<Either<Failure, List<WalletModel>>> getWallets();
  Either<Failure, Stream<List<WalletModel>>> watchWallets();
  Future<Either<Failure, WalletModel>> getWalletById(int walletId);
  Either<Failure, Stream<WalletModel?>> watchWalletById(int walletId);

  Future<Either<Failure, int>> createWallet(WalletModel walletModel);
  Future<Either<Failure, bool>> updateWallet(WalletModel walletModel);
  Future<Either<Failure, bool>> deleteWallet(WalletModel walletModel);
}
