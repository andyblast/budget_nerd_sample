import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';

class GetCategoryByIdUseCase
    implements UseCase<CategoryModel, GetCategoryByIdUseCaseParams> {
  final CategoriesRepository repository;

  GetCategoryByIdUseCase(this.repository);

  @override
  Future<Either<Failure, CategoryModel>> call(
      GetCategoryByIdUseCaseParams params) async {
    final categoryOrFailure =
        await repository.getCategoryById(params.categoryId);
    return categoryOrFailure;
  }
}

class GetCategoryByIdUseCaseParams extends Equatable {
  final int categoryId;

  GetCategoryByIdUseCaseParams({required this.categoryId});
  @override
  List<Object> get props => [categoryId];
}
