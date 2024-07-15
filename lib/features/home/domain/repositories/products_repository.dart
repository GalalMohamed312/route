import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/product.dart';

abstract class ProductsRepository {
  Future<Either<Failure, Products>> getProducts();
}
