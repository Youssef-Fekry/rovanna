import 'package:rovanna_app/core/helper/api.dart';
import 'package:rovanna_app/features/home/data/models/product_model.dart';

abstract class ProductsDataSource {
  Future<List<Productmodel>> getCategoryProducts();

  Future<List<Productmodel>> getProduct();

  Future<List<Productmodel>> getFashionProducts();

  Future<List<Productmodel>> getCosmeticsProducts();

  Future<List<Productmodel>> getPopularProducts();

  Future<List<Productmodel>> productsSearch();
}

class ProductDataSourceImpl extends ProductsDataSource {
  final Apiservices apiservices;

  ProductDataSourceImpl(this.apiservices);

  @override
  Future<List<Productmodel>> getProduct() async {
    var data = await apiservices.get(endPoint: 'get/1');

    List<Productmodel> productList = [];

    for (var productmap in data['product']) {
      productList.add(Productmodel.fromJson(productmap));
    }
    return productList;
  }

  @override
  Future<List<Productmodel>> getCategoryProducts() async {
    var data = await apiservices.get(endPoint: 'category/1');

    List<Productmodel> productList = [];

    for (var productmap in data['product']) {
      productList.add(Productmodel.fromJson(productmap));
    }
    return productList;
  }

  @override
  Future<List<Productmodel>> getCosmeticsProducts() async {
    var data = await apiservices.get(endPoint: 'cosmetics');

    List<Productmodel> productList = [];

    for (var productmap in data['product']) {
      productList.add(Productmodel.fromJson(productmap));
    }
    return productList;
  }

  @override
  Future<List<Productmodel>> getFashionProducts() async {
    var data = await apiservices.get(endPoint: 'fashion');

    List<Productmodel> productList = [];

    for (var productmap in data['product']) {
      productList.add(Productmodel.fromJson(productmap));
    }
    return productList;
  }

  @override
  Future<List<Productmodel>> getPopularProducts() async {
    var data = await apiservices.get(endPoint: 'popular');

    List<Productmodel> productList = [];

    for (var productmap in data['product']) {
      productList.add(Productmodel.fromJson(productmap));
    }
    return productList;
  }
  
  @override
  Future<List<Productmodel>> productsSearch() {
    // TODO: implement productsSearch
    throw UnimplementedError();
  }
  }

