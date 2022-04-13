import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/categories/domain/repositories/categories_repository.dart';

class UpdateCategoryUseCase
    implements UseCase<bool, UpdateCategoryUseCaseParams> {
  final CategoriesRepository repository;

  UpdateCategoryUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(UpdateCategoryUseCaseParams params) async {
    final updateOrFailure = await repository.updateCategory(params.category);

    // updateOrFailure.fold((failure) => Left(failure), (res) {
    //   sl<SyncRemoteDataUseCase>()(
    //       SyncRemoteDataUseCaseParams(categories: [params.category]));
    // });
    return Right(true);
  }
}

class UpdateCategoryUseCaseParams extends Equatable {
  final CategoryModel category;

  UpdateCategoryUseCaseParams({required this.category});

  @override
  List<Object> get props => [category];
}
