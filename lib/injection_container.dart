
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/api/api_consumer.dart';
import 'core/api/app_interceptors.dart';
import 'core/api/dio_consumer.dart';
import 'core/network/netwok_info.dart';
import 'features/home/data/datasources/product_local_data_source.dart';
import 'features/home/data/datasources/products_remote_data_source.dart';
import 'features/home/data/repositories/products_repository_impl.dart';
import 'features/home/domain/repositories/products_repository.dart';
import 'features/home/domain/usecases/get_products.dart';


final sl = GetIt.instance;

Future<void> init() async {
  //! Features

  // Blocs
  // sl.registerFactory<HomeCubit>(
  //     () => HomeCubit());
  // sl.registerFactory<LocaleCubit>(
  //     () => LocaleCubit(getSavedLangUseCase: sl(), changeLangUseCase: sl()));
  // sl.registerFactory<ThemeCubit>(
  //         () => ThemeCubit(getSavedThemeUseCase: sl(), changeThemeUseCase: sl()));
  // // sl.registerFactory<LayoutCubit>(
  // //         () => LayoutCubit(sl()));
  //
  // // Use cases
  sl.registerLazySingleton<GetProducts>(
      () => GetProducts( productsRepository:sl()));
  // Repository
  sl.registerLazySingleton<ProductsRepository>(() => ProductsRepositoryImpl(
      networkInfo: sl(),
      randomQuoteLocalDataSource: sl(), productsRemoteDataSource: sl()));

  // Data Sources
  sl.registerLazySingleton<RandomQuoteLocalDataSource>(
      () => RandomQuoteLocalDataSourceImpl(sharedPreferences: sl()));
  sl.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDataSourceImpl(apiConsumer: sl()));
  //! Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => AppIntercepters());
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio());
}
