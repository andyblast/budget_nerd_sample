import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/authorization/domain/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';

class AuthByGoogleUseCase
    implements UseCase<UserModel, AuthByGoogleUseCaseParams> {
  final AuthRepository repository;

  AuthByGoogleUseCase(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(
      AuthByGoogleUseCaseParams params) async {
    var newUserOrFailure = await repository.authByGoogle(params.idToken);

    return newUserOrFailure;
  }
}

class AuthByGoogleUseCaseParams extends Equatable {
  final String idToken;

  AuthByGoogleUseCaseParams({required this.idToken});

  @override
  List<Object> get props => [idToken];
}
