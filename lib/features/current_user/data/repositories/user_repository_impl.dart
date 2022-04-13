import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';

class UserRepositoryImpl extends UserRepository {
  final MyDatabase database;
  final UserLocalDataSource localDataSource;

  UserRepositoryImpl({required this.database, required this.localDataSource});

  @override
  Future<Either<Failure, bool>> createUser(UserModel userModel) async {
    await localDataSource.createUser(userModel);
    return Right(true);
  }

  @override
  Future<Either<Failure, bool>> deleteUser(UserModel userModel) async {
    await localDataSource.deleteUser(userModel);
    return Right(true);
  }

  @override
  Future<Either<Failure, bool>> updateUser(UserModel userModel) async {
    await localDataSource.updateUser(userModel);
    return Right(true);
  }

  @override
  Either<Failure, Stream<UserModel>> watchUser() {
    return Right(localDataSource.watchUser());
  }

  @override
  Future<Either<Failure, UserModel>> getUser() async {
    final user = await localDataSource.getUser();
    return Right(user);
  }
}
