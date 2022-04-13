import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> googleSignIn();
  Future<Either<Failure, UserModel>> authByGoogle(String idToken);
}
