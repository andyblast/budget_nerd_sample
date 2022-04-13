import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';
import 'package:budget_nerd/injection_container.dart';

import 'get_category_by_id_usecase.dart';

class CreateCategoryUseCase
    implements UseCase<int, CreateCategoryUseCaseParams> {
  final CategoriesRepository repository;

  CreateCategoryUseCase(this.repository);

  @override
  Future<Either<Failure, int>> call(CreateCategoryUseCaseParams params) async {
    final newCategoryIdOrFailure =
        await repository.createCategory(params.category);

    return newCategoryIdOrFailure.fold((failure) => Left(failure),
        (newCategoryId) async {
      final createdCategoryOrFailure = await sl<GetCategoryByIdUseCase>()(
          GetCategoryByIdUseCaseParams(categoryId: newCategoryId));

      // createdCategoryOrFailure.fold((failure) => Left(failure),
      //     (createdCategory) {
      //   sl<SyncRemoteDataUseCase>()(
      //       SyncRemoteDataUseCaseParams(categories: [createdCategory]));
      // });
      return Right(newCategoryId);
    });
  }
}

class CreateCategoryUseCaseParams extends Equatable {
  final CategoryModel category;

  CreateCategoryUseCaseParams({required this.category});

  @override
  List<Object> get props => [category];
}
