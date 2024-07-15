
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/netwok_info.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/products_repository.dart';
import '../datasources/product_local_data_source.dart';
import '../datasources/products_remote_data_source.dart';


class ProductsRepositoryImpl implements ProductsRepository {
  final NetworkInfo networkInfo;
  final ProductsRemoteDataSource productsRemoteDataSource;
  final RandomQuoteLocalDataSource randomQuoteLocalDataSource;

  ProductsRepositoryImpl(
      {required this.networkInfo,
      required this.productsRemoteDataSource,
      required this.randomQuoteLocalDataSource});

  @override
  Future<Either<Failure, Products>> getProducts() async {
    // if (await networkInfo.isConnected) {
    try {
      final remoteProducts =
          await productsRemoteDataSource.getProducts();
      randomQuoteLocalDataSource.cacheQuote(remoteProducts);
      return Right(remoteProducts as Products);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
  //   else {
  //     try {
  //       final cacheRandomQuote =
  //           await randomQuoteLocalDataSource.getLastRandomQuote();
  //       return Right(cacheRandomQuote);
  //     } on CacheException {
  //       return Left(CacheFailure());
  //     }
  //   }
  // }
}
