import 'dart:async';

import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/wallets/data/models/wallet_model.dart';

abstract class WalletsLocalDataSource {
  Future<int> createWallet(WalletModel walletModel);
  Future<void> updateWallet(WalletModel walletModel);
  Future<void> deleteWallet(WalletModel walletModel);

  Stream<List<WalletModel>> watchAllWallets();
  Stream<WalletModel?> watchWalletById(int walletId);
  Future<WalletModel> getWalletById(int walletId);
  Future<List<WalletModel>> getAllWallets();
}

class WalletsLocalDataSourceImpl implements WalletsLocalDataSource {
  final MyDatabase database;

  WalletsLocalDataSourceImpl(this.database);

  @override
  Future<int> createWallet(WalletModel walletModel) async {
    return await database.walletDao.createWallet(walletModel.toMoor());
  }

  @override
  Future<void> updateWallet(WalletModel walletModel) async {
    return await database.walletDao.updateWallet(walletModel.toMoor());
  }

  @override
  Future<void> deleteWallet(WalletModel walletModel) async {
    return await database.walletDao.deleteWallet(walletModel.toMoor());
  }

  @override
  Stream<List<WalletModel>> watchAllWallets() {
    final walletsList = database.walletDao.watchAllWallets();
    return walletsList
        .map((list) => list.map((t) => WalletModel.fromMoor(t)).toList());
  }

  @override
  Future<WalletModel> getWalletById(int walletId) async {
    final response = await database.walletDao.getWalletById(walletId);
    return WalletModel.fromMoor(response);
  }

  @override
  Future<List<WalletModel>> getAllWallets() async {
    final response = await database.walletDao.getAllWallets();
    return response.map((wallet) => WalletModel.fromMoor(wallet)).toList();
  }

  @override
  Stream<WalletModel?> watchWalletById(int walletId) {
    final response = database.walletDao.watchWalletById(walletId);
    return response
        .map((wallet) => wallet != null ? WalletModel.fromMoor(wallet) : null);
  }
}
