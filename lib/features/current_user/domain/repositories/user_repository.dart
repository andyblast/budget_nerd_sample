import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';

abstract class UserRepository {
  Either<Failure, Stream<UserModel>> watchUser();
  Future<Either<Failure, UserModel>> getUser();

  Future<Either<Failure, bool>> createUser(UserModel userModel);
  Future<Either<Failure, bool>> updateUser(UserModel userModel);
  Future<Either<Failure, bool>> deleteUser(UserModel userModel);
}
