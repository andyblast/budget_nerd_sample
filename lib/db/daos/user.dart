import 'package:moor/moor.dart';
import 'package:budget_nerd/db/moor.dart' show $UsersTable, MyDatabase, User;
import 'package:budget_nerd/db/tables/tables.dart' show Users;

part 'user.g.dart';

@UseDao(tables: [Users])
class UserDao extends DatabaseAccessor<MyDatabase> with _$UserDaoMixin {
  final MyDatabase db;

  UserDao(this.db) : super(db);

  Future createUser(User user) => into(users).insert(user);
  Future deleteUser(User user) => delete(users).delete(user);
  Future updateUser(User user) =>
      update(users).replace(user.copyWith(updatedAt: DateTime.now()));

  Future<User> getUser() => select(users).getSingle();
  Stream<User> watchUser() => select(users).watchSingle();
}
