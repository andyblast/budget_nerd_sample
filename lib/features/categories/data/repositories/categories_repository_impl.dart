import 'package:dartz/dartz.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/categories/domain/repositories/index.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final MyDatabase database;
  final CategoriesLocalDataSource localDataSource;

  CategoriesRepositoryImpl({
    required this.database,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, int>> createCategory(CategoryModel category) async {
    final response = await localDataSource.createCategory(category);
    return Right(response);
  }

  @override
  Future<Either<Failure, bool>> deleteCategory(CategoryModel category) async {
    await localDataSource.deleteCategory(category);
    return Right(true);
  }

  @override
  Future<Either<Failure, bool>> updateCategory(CategoryModel category) async {
    await localDataSource.updateCategory(category);
    return Right(true);
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() async {
    final response = await localDataSource.getAllcategories();
    return Right(response);
  }

  @override
  Either<Failure, Stream<List<CategoryModel>>> watchAllCategories() {
    return Right(localDataSource.watchAllCategories());
  }

  @override
  Either<Failure, Stream<List<CategoryModel>>> watchCategoriesByType(
      CategoryTypes type) {
    return Right(localDataSource.watchCategoriesByType(type));
  }

  @override
  Future<Either<Failure, CategoryModel>> getCategoryById(int categoryId) async {
    final response = await localDataSource.getCategoryById(categoryId);
    return Right(response);
  }
}
