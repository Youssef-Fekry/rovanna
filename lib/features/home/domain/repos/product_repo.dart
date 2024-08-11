import 'package:dartz/dartz.dart';
import 'package:rovanna_app/core/errors/failures.dart';
import 'package:rovanna_app/features/home/data/models/product_model.dart';

abstract class ProductsRepo {
    Future<Either<Failure, List<Productmodel>>> getCategoryProducts();

   Future<Either<Failure, List<Productmodel>>> getProduct();

   Future<Either<Failure, List<Productmodel>>> getPopularProducts();

   Future<Either<Failure, List<Productmodel>>> getFashionProducts();

  Future<Either<Failure, List<Productmodel>>> getCosmeticsProducts();

   Future<Either<Failure, List<Productmodel>>> productsSearch();
}
