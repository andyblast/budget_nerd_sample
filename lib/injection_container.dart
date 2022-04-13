import 'package:budget_nerd/core/network/network_info.dart';
import 'package:budget_nerd/core/ui/dialog_window/index.dart';
import 'package:budget_nerd/core/usecases/drop_database.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/authorization/data/repositories/auth_repository_impl.dart';
import 'package:budget_nerd/features/authorization/domain/index.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/categories/domain/index.dart';
import 'package:budget_nerd/features/categories/domain/usecases/index.dart';
import 'package:budget_nerd/features/categories/presentation/bloc/categories_list_bloc.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/currencies/domain/index.dart';
import 'package:budget_nerd/features/currencies/presentation/bloc/currencies_list_bloc.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/features/current_user/presentation/bloc/current_user_bloc.dart';
import 'package:budget_nerd/features/exchangerates/data/datasources/index.dart';
import 'package:budget_nerd/features/exchangerates/data/repositories/exchange_rates_repository_impl.dart';
import 'package:budget_nerd/features/exchangerates/domain/index.dart';
import 'package:budget_nerd/features/exchangerates/presentation/exchangerates_list_bloc.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/transactions/domain/index.dart';
import 'package:budget_nerd/features/transactions/domain/usecases/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/index.dart';
import 'package:budget_nerd/features/wallets/presentation/bloc/selected_wallet/selected_wallet_bloc.dart';
import 'package:budget_nerd/features/wallets/presentation/bloc/wallets_list/wallets_list_bloc.dart';
import 'package:get_it/get_it.dart';

import 'core/ui/index.dart';
import 'features/authorization/data/datasources/index.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // // Features
  _initTransactionsFeature();
  _initWalletsFeature();
  _initCurrenciesFeature();
  _initExchangeRatesFeature();
  _initCategoriesFeature();
  _initUserFeature();
  _initAuthFeature();
  // _initSyncFeature();
  _initUIFeatures();

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
  sl.registerLazySingleton<SizeConfig>(() => SizeConfig());

  // Database
  sl.registerLazySingleton(() => MyDatabase());
  sl.registerLazySingleton(() => DropDatabaseUseCase(sl()));

  // // External
}

void _initUIFeatures() {
  sl.registerLazySingleton<DialogWindow>(() => DialogWindowImpl());
}

// void _initSyncFeature() {
//   // Usecases
//   sl.registerLazySingleton(() => SyncRemoteDataUseCase(sl()));
//   sl.registerLazySingleton(() => DeleteRemoteCategoryUseCase(sl()));
//   sl.registerLazySingleton(() => DeleteRemoteWalletUseCase(sl()));
//   sl.registerLazySingleton(() => DeleteRemoteTransactionUseCase(sl()));

//   // Repository
//   sl.registerLazySingleton<SyncRepository>(
//       () => SyncRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));

//   // DataSources
//   sl.registerLazySingleton<SyncRemoteDataSource>(
//       () => SyncRemoteDataSourceImpl());
// }

void _initAuthFeature() {
  // Usecases
  sl.registerLazySingleton(() => GoogleSignInUseCase(sl()));
  sl.registerLazySingleton(() => AuthByGoogleUseCase(sl()));
  sl.registerLazySingleton(() => SignOutUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      googleDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));

  // DataSources
  sl.registerLazySingleton<GoogleDataSource>(() => GoogleDataSourceImpl());
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());
}

void _initUserFeature() {
  // Usecases
  sl.registerLazySingleton(() => WatchCurrentUserUseCase(sl()));
  sl.registerLazySingleton(() => UpdateCurrentUserUseCase(sl()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl()));

  // Repository
  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(database: sl(), localDataSource: sl()));

  // DataSources
  sl.registerLazySingleton<UserLocalDataSource>(
      () => UserLocalDataSourceImpl(sl()));

  // Bloc
  sl.registerFactory(() => CurrentUserBloc(watchCurrentUserUseCase: sl()));
}

void _initWalletsFeature() {
  // Bloc
  sl.registerFactory(() => WalletListBloc(watchWalletsUseCase: sl()));
  sl.registerFactory(
    () => SelectedWalletBloc(
      watchCurrentUserUseCase: sl(),
      watchWalletByIdUseCase: sl(),
      getTransactionsByWalletUseCase: sl(),
      getCurrentUserUseCase: sl(),
      watchWalletsUseCase: sl(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => WatchWalletsUseCase(sl()));
  sl.registerLazySingleton(() => GetWalletByIdUseCase(sl()));
  sl.registerLazySingleton(() => WatchWalletByIdUseCase(sl()));
  // sl.registerLazySingleton(() => GetSelectedWalletUseCase(sl()));
  sl.registerLazySingleton(() => GetWalletsUseCase(sl()));
  sl.registerLazySingleton(() => CreateWalletUseCase(sl()));
  sl.registerLazySingleton(() => UpdateWalletUseCase(sl()));
  sl.registerLazySingleton(() => DeleteWalletUseCase(sl(), sl()));
  sl.registerLazySingleton(() => UpdateBalanceUseCase(sl(), sl()));

  // Repository
  sl.registerLazySingleton<WalletsRepository>(
      () => WalletsRepositoryImpl(database: sl(), localDataSource: sl()));

  // DataSources
  sl.registerLazySingleton<WalletsLocalDataSource>(
      () => WalletsLocalDataSourceImpl(sl()));
}

void _initCategoriesFeature() {
  // Bloc
  sl.registerFactory(() => CategoriesListBloc(watchAllCategoriesUseCase: sl()));

  // Usecases
  sl.registerLazySingleton(() => WatchAllCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => WatchCategoriesByTypeUseCase(sl()));
  sl.registerLazySingleton(() => CreateCategoryUseCase(sl()));
  sl.registerLazySingleton(() => DeleteCategoryUseCase(sl(), sl()));
  // sl.registerLazySingleton(() => GetAllCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => UpdateCategoryUseCase(sl()));
  sl.registerLazySingleton(() => GetCategoryByIdUseCase(sl()));

  // Repository
  sl.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepositoryImpl(database: sl(), localDataSource: sl()));

  // DataSources
  sl.registerLazySingleton<CategoriesLocalDataSource>(
      () => CategoriesLocalDataSourceImpl(sl()));
}

void _initCurrenciesFeature() {
  // Bloc
  sl.registerFactory(() => CurrenciesListBloc(getLocalCurrenciesUseCase: sl()));

  // Usecases
  sl.registerLazySingleton(() => GetLocalCurrenciesUseCase(sl()));

  // Repository
  sl.registerLazySingleton<CurrenciesRepository>(
      () => CurrenciesRepositoryImpl(localDataSource: sl()));

  // DataSources
  sl.registerLazySingleton<CurrenciesLocalDataSource>(
      () => CurrenciesLocalDataSourceImpl());
}

void _initExchangeRatesFeature() {
  // Bloc
  sl.registerFactory(
      () => ExchangeRatesListBloc(getLocalExchangeRatesUseCase: sl()));

  // Usecases
  sl.registerLazySingleton(
      () => RemoteSyncExchangeRatesUseCase(sl(), sl(), sl()));
  sl.registerLazySingleton(() => GetLocalExchangeRatesUseCase(sl()));
  sl.registerLazySingleton(() => GetRemoteExchangeRatesUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ExchangeRatesRepository>(() =>
      ExchangeRatesRepositoryImpl(
          localDataSource: sl(), remoteDataSource: sl(), database: sl()));

  // DataSources
  sl.registerLazySingleton<ExchangeRatesLocalDataSource>(
      () => ExchangeRatesLocalDataSourceImpl(database: sl()));
  sl.registerLazySingleton<ExchangeratesRemoteDataSource>(
      () => ExchangeratesRemoteDataSourceImpl());
}

void _initTransactionsFeature() {
  // Bloc
  // sl.registerFactory(() => TransactionsListBloc(
  //     watchTransactionsByWalletUseCase: sl(),
  //     watchAllTransactionsUseCase: sl()));

  // Usecases
  sl.registerLazySingleton(
      () => CalculateWalletBalanceUseCase(sl(), sl(), sl()));
  // sl.registerLazySingleton(() => WatchAllTransactionsUseCase(sl()));
  // sl.registerLazySingleton(() => WatchTransactionsByWalletUseCase(sl()));
  sl.registerLazySingleton(() => GetTransactionsByWalletUseCase(sl()));
  sl.registerLazySingleton(() => GetTransactionByIdUseCase(sl()));
  sl.registerLazySingleton(() => UpdateTransactionUseCase(sl()));
  sl.registerLazySingleton(() => DeleteTransactionUseCase(sl()));
  sl.registerLazySingleton(() => CreateTransactionUseCase(sl()));
  sl.registerLazySingleton(() => SwitchWalletTransactionUseCase(sl()));

  // Repository
  sl.registerLazySingleton<TransactionsRepository>(
      () => TransactionsRepositoryImpl(database: sl(), localDataSource: sl()));

  // DataSources
  sl.registerLazySingleton<TransactionsLocalDataSourceImpl>(
      () => TransactionsLocalDataSourceImpl(sl()));
}
