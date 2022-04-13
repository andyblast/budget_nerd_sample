import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';

abstract class UserLocalDataSource {
  Future<void> createUser(UserModel user);
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser(UserModel user);
  Future<UserModel> getUser();
  Stream<UserModel> watchUser();
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final MyDatabase database;

  UserLocalDataSourceImpl(this.database);

  @override
  Future<void> createUser(UserModel user) async {
    return await database.userDao.createUser(user.toMoor());
  }

  @override
  Future<void> deleteUser(UserModel user) async {
    return await database.userDao.deleteUser(user.toMoor());
  }

  @override
  Future<void> updateUser(UserModel user) async {
    return await database.userDao.updateUser(user.toMoor());
  }

  @override
  Stream<UserModel> watchUser() {
    final user = database.userDao.watchUser();
    return user.map((u) => UserModel.fromMoor(u));
  }

  @override
  Future<UserModel> getUser() async {
    final user = await database.userDao.getUser();
    return UserModel.fromMoor(user);
  }
}
