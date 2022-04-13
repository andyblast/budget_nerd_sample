import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';

class UpdateCurrentUserUseCase
    implements UseCase<bool, UpdateCurrentUserUseCaseParams> {
  final UserRepository repository;

  UpdateCurrentUserUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(UpdateCurrentUserUseCaseParams params) {
    return repository.updateUser(params.user);
  }
}

class UpdateCurrentUserUseCaseParams extends Equatable {
  final UserModel user;

  UpdateCurrentUserUseCaseParams({required this.user});

  @override
  List<Object> get props => [user];
}
