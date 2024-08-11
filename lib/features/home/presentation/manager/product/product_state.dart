part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class GetProductInitial extends ProductState {}

final class GetProductLoading extends ProductState {}

final class GetProductFailure extends ProductState {
  final String error;

  GetProductFailure(this.error);
}

final class GetProductSuccess extends ProductState {
  final List<Productmodel> products;

  GetProductSuccess(this.products);
}
