import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/index.dart';
import 'package:budget_nerd/core/network/network_info.dart';
import 'package:budget_nerd/features/authorization/data/index.dart';
import 'package:budget_nerd/features/authorization/domain/index.dart';
import 'package:budget_nerd/features/current_user/data/models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final GoogleDataSource googleDataSource;
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.googleDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> googleSignIn() async {
    if (await networkInfo.isConnected) {
      try {
        final idToken = await googleDataSource.googleSignIn();
        return Right(idToken);
      } on GoogleSignInException {
        return Left(GoogleSignInFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> authByGoogle(String idToken) async {
    if (await networkInfo.isConnected) {
      try {
        final newUser = await remoteDataSource.authByGoogle(idToken);
        return Right(newUser);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
