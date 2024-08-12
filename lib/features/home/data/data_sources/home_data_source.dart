import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rovanna_app/core/errors/failures.dart';
import 'package:rovanna_app/core/helper/api.dart';
import 'package:rovanna_app/features/home/data/models/product_model.dart';
import 'package:rovanna_app/features/home/domain/repos/product_repo.dart';


class ProductDataSourceRepoImpl extends ProductsRepo {
  final Apiservices apiservices;

  ProductDataSourceRepoImpl(this.apiservices);

  @override
  Future<Either<Failure, List<Productmodel>>> getProduct() async {
    try {
      var data = await apiservices.get(endPoint: 'products/get/1');
      List<Productmodel> productList = [];
      for (var productmap in data['product']) {
        productList.add(
          Productmodel.fromJson(productmap),
        );
      }
      return right(productList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Productmodel>>> getCategoryProducts() async {
    try {
      var data = await apiservices.get(endPoint: 'products/category/1');
      List<Productmodel> productList = [];
      for (var productmap in data['product']) {
        productList.add(
          Productmodel.fromJson(productmap),
        );
      }
      return right(productList);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Productmodel>>> getCosmeticsProducts() async {
    try {
      var data = await apiservices.get(endPoint: 'products/cosmetics');
      List<Productmodel> productList = [];
      for (var productmap in data['product']) {
        productList.add(
          Productmodel.fromJson(productmap),
        );
      }
      return right(productList);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Productmodel>>> getFashionProducts() async {
    try {
      var data = await apiservices.get(endPoint: 'products/fashion');
      List<Productmodel> productList = [];
      for (var productmap in data['product']) {
        productList.add(
          Productmodel.fromJson(productmap),
        );
      }
      return right(productList);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Productmodel>>> getPopularProducts() async {
    try {
      var data = await apiservices.get(endPoint: 'products/popular');
      List<Productmodel> productList = [];
      for (var productmap in data['product']) {
        productList.add(
          Productmodel.fromJson(productmap),
        );
      }
      return right(productList);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  @override
  Future<List<Productmodel>> productsSearch(
      String search, String categoryId) async {
    var data = await apiservices.post(
      endPoint: 'products/search',
      body: {'search': search, 'category_id': categoryId},
    );
    return data;
  }
}
