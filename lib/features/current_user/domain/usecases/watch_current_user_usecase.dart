import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';

class WatchCurrentUserUseCase implements UseCaseStream<UserModel, NoParams> {
  final UserRepository repository;

  WatchCurrentUserUseCase(this.repository);

  @override
  Either<Failure, Stream<UserModel>> call(NoParams params) {
    return repository.watchUser();
  }
}
