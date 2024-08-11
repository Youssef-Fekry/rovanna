import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rovanna_app/features/home/data/models/product_model.dart';
import 'package:rovanna_app/features/home/domain/repos/product_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(super.initialState, this.productsRepo);
  final ProductsRepo productsRepo;

  Future<void> getProduct() async {
    emit(GetProductLoading());
    var result = await productsRepo.getProduct();
    result.fold((failure) {
      emit(GetProductFailure(failure.message));
    }, (products) {
      emit(GetProductSuccess(products));
    });
  }
}
