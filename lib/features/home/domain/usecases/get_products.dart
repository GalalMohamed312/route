import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/product.dart';
import '../repositories/products_repository.dart';

class GetProducts implements UseCase<Products, NoParams> {
  final ProductsRepository productsRepository;

  GetProducts({required this.productsRepository});
  @override
  Future<Either<Failure, Products>> call(NoParams params) =>
      productsRepository.getProducts();
}
