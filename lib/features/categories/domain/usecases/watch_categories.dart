import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';

class WatchAllCategoriesUseCase
    implements UseCaseStream<List<CategoryModel>, NoParams> {
  final CategoriesRepository repository;

  WatchAllCategoriesUseCase(this.repository);

  @override
  Either<Failure, Stream<List<CategoryModel>>> call(NoParams params) {
    return repository.watchAllCategories();
  }
}
