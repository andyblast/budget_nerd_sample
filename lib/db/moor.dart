import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart' show VmDatabase;
import 'package:budget_nerd/core/error/failures.dart';
import 'package:uuid/uuid.dart' show Uuid;

import 'package:budget_nerd/core/utils/index.dart' show unawaited;
import 'package:budget_nerd/features/exchangerates/domain/index.dart'
    show RemoteSyncExchangeRatesUseCase;
import 'package:budget_nerd/injection_container.dart' show sl;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:path/path.dart' as p;
import 'package:budget_nerd/core/usecases/usecase.dart' show NoParams;

import 'package:budget_nerd/db/daos/daos.dart'
    show
        CategoriesDao,
        WalletDao,
        CbRfRatesDao,
        ExchangeRatesDao,
        TransactionDao,
        UserDao;

import './tables/tables.dart';
import './seed.dart';

part 'moor.g.dart';

final _uuid = Uuid();

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file, logStatements: true);
  });
}

@UseMoor(tables: [
  Wallets,
  Transactions,
  CbRfRates,
  ExchangeRates,
  Categories,
  Users
], daos: [
  TransactionDao,
  WalletDao,
  CbRfRatesDao,
  ExchangeRatesDao,
  CategoriesDao,
  UserDao
])
class MyDatabase extends _$MyDatabase {
  late QueryExecutor e;

  MyDatabase() : super(_openConnection());
  MyDatabase.withQuerySelector({required this.e}) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, beforeOpen: (details) async {
        unawaited(sl<RemoteSyncExchangeRatesUseCase>()(NoParams()));

        if (details.wasCreated) {
          await batch((batch) {
            batch.insertAll(categories, defaultCategories);
          });
          await into(users).insert(defaultUser);
        }
      });

  Future<Either<Failure, bool>> deleteAllTables() async {
    final m = createMigrator();
    for (final table in allTables.toList()) {
      await m.deleteTable(table.actualTableName);
      await m.createTable(table);
    }
    await batch((batch) {
      batch.insertAll(categories, defaultCategories);
    });
    await into(users).insert(defaultUser);
    return Right(true);
  }
}
