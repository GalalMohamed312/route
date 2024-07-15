import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:route/features/home/domain/entities/product.dart';
import '../../domain/entities/product.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
// import '../../data/models/product_model.dart';
import '../../domain/usecases/get_products.dart';
part 'random_quote_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final GetProducts getProductsUseCase;
  ProductsCubit({required this.getProductsUseCase})
      : super(ProductsInitial());


  ValueNotifier<bool> get loading => _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);



  Future<void> getProducts() async {
    emit(ProductsIsLoading());
    Either<Failure, Products> response = await getProductsUseCase(NoParams());
    emit(response.fold(
        (failure) => RandomQuoteError(msg: _mapFailureToMsg(failure)),
        (products) => ProductsLoaded( products: products)));
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailure;
      case CacheFailure:
        return AppStrings.cacheFailure;

      default:
        return AppStrings.unexpectedError;
    }
  }
}
