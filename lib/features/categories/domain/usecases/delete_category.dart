import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';

class DeleteCategoryUseCase
    implements UseCase<bool, DeleteCategoryUseCaseParams> {
  final CategoriesRepository repository;
  final TransactionsRepository transactionRepository;

  DeleteCategoryUseCase(this.repository, this.transactionRepository);

  @override
  Future<Either<Failure, bool>> call(DeleteCategoryUseCaseParams params) async {
    var res = await repository.deleteCategory(params.category);
    await transactionRepository.detachFromCategory(params.category.id!);

    // unawaited(sl<DeleteRemoteCategoryUseCase>()(
    //   DeleteRemoteCategoryUseCaseParams(
    //       categoryId: params.category.id.toString()),
    // ));

    return res;
  }
}

class DeleteCategoryUseCaseParams extends Equatable {
  final CategoryModel category;

  DeleteCategoryUseCaseParams({required this.category});
  @override
  List<Object> get props => [category];
}
