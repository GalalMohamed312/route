part of 'random_quote_cubit.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsIsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final Products products;

  const ProductsLoaded({required this.products});

  @override
  List<Object> get props => [products];
}

class RandomQuoteError extends ProductsState {
  final String msg;

  const RandomQuoteError({required this.msg});

  @override
  List<Object> get props => [msg];
}
