import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rovanna_app/features/home/data/models/product_model.dart';
import 'package:rovanna_app/features/home/domain/repos/product_repo.dart';

part 'cosmeticsproduct_state.dart';

class CosmeticsproductCubit extends Cubit<CosmeticsproductState> {
  CosmeticsproductCubit(this.productsRepo) : super(CosmeticsproductInitial());
  final ProductsRepo productsRepo;

  Future<void> getProduct() async {
    emit(CosmeticsproductLoading());
    var result = await productsRepo.getCosmeticsProducts();
    result.fold((failure) {
      emit(CosmeticsproductFailure(failure.message));
    }, (products) {
      emit(CosmeticsproductSuccuess(products));
    });
  }
}
