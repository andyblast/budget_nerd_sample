import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/authorization/domain/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';

class GoogleSignInUseCase implements UseCase<UserModel, NoParams> {
  final AuthRepository repository;

  GoogleSignInUseCase(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(NoParams params) async {
    final eitherGoogleIdTokenOrFailure = await repository.googleSignIn();

    return eitherGoogleIdTokenOrFailure.fold((failure) {
      return Left(failure);
    }, (idToken) async {
      final eitherNewUserOrFailure = await sl<AuthByGoogleUseCase>()(
          AuthByGoogleUseCaseParams(idToken: idToken));

      return eitherNewUserOrFailure.fold((failure) => Left(failure),
          (newUser) async {
        final dbUserOrFailure = await sl<GetCurrentUserUseCase>()(NoParams());

        return dbUserOrFailure.fold((failure) => Left(failure), (dbUser) async {
          final userToUpdate = newUser.copyWith(
            id: dbUser.id,
            createdAt: dbUser.createdAt,
            homeCurrency: dbUser.homeCurrency,
            locale: dbUser.locale,
            selectedWalletId: dbUser.selectedWalletId,
            selectedDate: dbUser.selectedDate,
          );

          final updateCurrentUserOrFailure =
              await sl<UpdateCurrentUserUseCase>()(
                  UpdateCurrentUserUseCaseParams(user: userToUpdate));

          return updateCurrentUserOrFailure.fold(
              (failure) => Left(failure), (res) => Right(userToUpdate));
        });
      });
    });
  }
}
