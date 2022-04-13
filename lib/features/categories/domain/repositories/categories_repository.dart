import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/index.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<CategoryModel>>> getAllCategories();
  Either<Failure, Stream<List<CategoryModel>>> watchAllCategories();
  Either<Failure, Stream<List<CategoryModel>>> watchCategoriesByType(
      CategoryTypes type);
  Future<Either<Failure, CategoryModel>> getCategoryById(int categoryId);

  Future<Either<Failure, int>> createCategory(CategoryModel category);
  Future<Either<Failure, bool>> deleteCategory(CategoryModel category);
  Future<Either<Failure, bool>> updateCategory(CategoryModel category);
}
