import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';

class WalletsRepositoryImpl implements WalletsRepository {
  final MyDatabase database;
  final WalletsLocalDataSource localDataSource;

  WalletsRepositoryImpl({
    required this.database,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, int>> createWallet(WalletModel walletModel) async {
    var walletId = await localDataSource.createWallet(walletModel);
    return Right(walletId);
  }

  @override
  Future<Either<Failure, bool>> updateWallet(WalletModel walletModel) async {
    await localDataSource.updateWallet(walletModel);
    return Right(true);
  }

  @override
  Future<Either<Failure, bool>> deleteWallet(WalletModel walletModel) async {
    await localDataSource.deleteWallet(walletModel);
    return Right(true);
  }

  @override
  Future<Either<Failure, List<WalletModel>>> getWallets() async {
    final allWallets = await localDataSource.getAllWallets();
    return Right(allWallets);
  }

  @override
  Either<Failure, Stream<List<WalletModel>>> watchWallets() {
    return Right(localDataSource.watchAllWallets());
  }

  @override
  Future<Either<Failure, WalletModel>> getWalletById(int walletId) async {
    final response = await localDataSource.getWalletById(walletId);
    return Right(response);
  }

  @override
  Either<Failure, Stream<WalletModel?>> watchWalletById(int walletId) {
    final response = localDataSource.watchWalletById(walletId);
    return Right(response);
  }
}
