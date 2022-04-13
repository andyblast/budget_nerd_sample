import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';

class WatchCategoriesByTypeUseCase
    implements UseCaseStream<List<CategoryModel>, WatchCategoriesByTypeParams> {
  final CategoriesRepository repository;

  WatchCategoriesByTypeUseCase(this.repository);

  @override
  Either<Failure, Stream<List<CategoryModel>>> call(
      WatchCategoriesByTypeParams params) {
    return repository.watchCategoriesByType(params.type);
  }
}

class WatchCategoriesByTypeParams extends Equatable {
  final CategoryTypes type;

  WatchCategoriesByTypeParams(this.type);

  @override
  List<Object> get props => [type];
}
