import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';

class GetCurrentUserUseCase implements UseCase<UserModel, NoParams> {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(NoParams params) {
    return repository.getUser();
  }
}
