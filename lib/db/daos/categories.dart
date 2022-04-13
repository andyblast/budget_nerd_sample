import 'package:moor/moor.dart';
import 'package:budget_nerd/db/moor.dart'
    show $CategoriesTable, Categorie, MyDatabase;
import 'package:budget_nerd/db/tables/categories.dart';

part 'categories.g.dart';

@UseDao(tables: [Categories])
class CategoriesDao extends DatabaseAccessor<MyDatabase>
    with _$CategoriesDaoMixin {
  final MyDatabase db;

  // Called by the AppDatabase class
  CategoriesDao(this.db) : super(db);

  SimpleSelectStatement<$CategoriesTable, Categorie> _defaultScope() {
    return select(categories)
      ..orderBy(
          [(t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc)]);
  }

  SimpleSelectStatement<$CategoriesTable, Categorie> _reverseScope() {
    return select(categories)
      ..orderBy(
          [(t) => OrderingTerm(expression: t.id, mode: OrderingMode.asc)]);
  }

  Future<int> createCategory(Insertable<Categorie> category) =>
      into(categories).insert(category);

  Future deleteCategory(Categorie category) =>
      delete(categories).delete(category);

  Future updateCategory(Categorie category) =>
      update(categories).replace(category.copyWith(updatedAt: DateTime.now()));

  Future<List<Categorie>> getAllCategories() => _defaultScope().get();
  Stream<List<Categorie>> watchAllCategories() => _reverseScope().watch();

  Stream<List<Categorie>> watchCategoriesByType(CategoryTypes type) =>
      (_defaultScope()..where((el) => el.type.equals(type.index))).watch();

  Future<Categorie> getCategoryById(int categoryId) =>
      (_defaultScope()..where((el) => el.id.equals(categoryId))).getSingle();
}
