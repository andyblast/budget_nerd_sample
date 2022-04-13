import 'package:moor/moor.dart';
import 'package:budget_nerd/db/moor.dart'
    show $WalletsTable, Wallet, MyDatabase;
import 'package:budget_nerd/db/tables/tables.dart' show Wallets;

part 'wallets.g.dart';

@UseDao(tables: [Wallets])
class WalletDao extends DatabaseAccessor<MyDatabase> with _$WalletDaoMixin {
  final MyDatabase db;

  // Called by the AppDatabase class
  WalletDao(this.db) : super(db);

  SimpleSelectStatement<$WalletsTable, Wallet> _defaultScope() {
    return select(wallets)
      ..orderBy([
        (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
      ]);
  }

  Future<int> createWallet(Insertable<Wallet> wallet) =>
      into(wallets).insert(wallet);

  Future updateWallet(Wallet wallet) =>
      update(wallets).replace(wallet.copyWith(updatedAt: DateTime.now()));

  Future deleteWallet(Wallet wallet) => delete(wallets).delete(wallet);

  Stream<List<Wallet>> watchAllWallets() => _defaultScope().watch();

  Stream<Wallet> watchTransactionWithId(int id) {
    return (_defaultScope()..where((t) => t.id.equals(id))).watchSingle();
  }

  Future<Wallet> getWalletById(int walletId) =>
      (_defaultScope()..where((el) => el.id.equals(walletId))).getSingle();

  Stream<Wallet?> watchWalletById(int walletId) =>
      (_defaultScope()..where((el) => el.id.equals(walletId)))
          .watchSingleOrNull();

  Future<List<Wallet>> getAllWallets() => _defaultScope().get();
}
