import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/authorization/domain/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';

class SignOutUseCase implements UseCase<bool, SignOutUseCaseParams> {
  final AuthRepository repository;

  SignOutUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(SignOutUseCaseParams params) async {
    final emptyUser = params.currentUser.emptyUser;

    final eitherUpdateUserOrFailure = await sl<UpdateCurrentUserUseCase>()(
        UpdateCurrentUserUseCaseParams(user: emptyUser));

    return eitherUpdateUserOrFailure;
  }
}

class SignOutUseCaseParams extends Equatable {
  final UserModel currentUser;

  SignOutUseCaseParams({required this.currentUser});

  @override
  List<Object> get props => [currentUser];
}
