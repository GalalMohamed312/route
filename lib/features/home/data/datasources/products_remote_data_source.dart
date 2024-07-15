import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_points.dart';
import '../models/product_model.dart';

abstract class ProductsRemoteDataSource {
  Future<ProductModel> getProducts();
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  ApiConsumer apiConsumer;

  ProductsRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<ProductModel> getProducts() async {
    final response = await apiConsumer.get(
      EndPoints.productsURL,
    );
    return ProductModel.fromJson(response);
  }
}
