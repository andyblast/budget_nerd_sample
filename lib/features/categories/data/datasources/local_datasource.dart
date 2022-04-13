import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/models/category_model.dart';

abstract class CategoriesLocalDataSource {
  Future<List<CategoryModel>> getAllcategories();
  Stream<List<CategoryModel>> watchAllCategories();
  Stream<List<CategoryModel>> watchCategoriesByType(CategoryTypes type);
  Future<CategoryModel> getCategoryById(int categoryId);

  Future<int> createCategory(CategoryModel category);
  Future<void> updateCategory(CategoryModel category);
  Future<void> deleteCategory(CategoryModel category);
}

class CategoriesLocalDataSourceImpl implements CategoriesLocalDataSource {
  final MyDatabase database;

  CategoriesLocalDataSourceImpl(this.database);

  @override
  Future<List<CategoryModel>> getAllcategories() async {
    final response = await database.categoriesDao.getAllCategories();
    return response
        .map((category) => CategoryModel.fromMoor(category))
        .toList();
  }

  @override
  Stream<List<CategoryModel>> watchAllCategories() {
    final categoriesList = database.categoriesDao.watchAllCategories();
    return categoriesList
        .map((list) => list.map((t) => CategoryModel.fromMoor(t)).toList());
  }

  @override
  Stream<List<CategoryModel>> watchCategoriesByType(CategoryTypes type) {
    final categoriesList = database.categoriesDao.watchCategoriesByType(type);
    return categoriesList
        .map((list) => list.map((t) => CategoryModel.fromMoor(t)).toList());
  }

  @override
  Future<int> createCategory(CategoryModel category) async {
    return await database.categoriesDao.createCategory(category.toMoor());
  }

  @override
  Future<void> deleteCategory(CategoryModel category) async {
    return await database.categoriesDao.deleteCategory(category.toMoor());
  }

  @override
  Future<void> updateCategory(CategoryModel category) async {
    return await database.categoriesDao.updateCategory(category.toMoor());
  }

  @override
  Future<CategoryModel> getCategoryById(int categoryId) async {
    final response = await database.categoriesDao.getCategoryById(categoryId);
    return CategoryModel.fromMoor(response);
  }
}
