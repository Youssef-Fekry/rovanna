part of 'cosmeticsproduct_cubit.dart';

sealed class CosmeticsproductState extends Equatable {
  const CosmeticsproductState();

  @override
  List<Object> get props => [];
}

final class CosmeticsproductInitial extends CosmeticsproductState {}

final class CosmeticsproductLoading extends CosmeticsproductState {}

final class CosmeticsproductFailure extends CosmeticsproductState {
  final String error;

  const CosmeticsproductFailure(this.error);
}

final class CosmeticsproductSuccuess extends CosmeticsproductState {
  final List<Productmodel> cosmeticesList;

  const CosmeticsproductSuccuess(this.cosmeticesList);
}
