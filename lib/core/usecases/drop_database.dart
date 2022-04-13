import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/db/moor.dart' show MyDatabase;

class DropDatabaseUseCase implements UseCase<bool, NoParams> {
  final MyDatabase db;

  DropDatabaseUseCase(this.db);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return db.deleteAllTables();
  }
}
