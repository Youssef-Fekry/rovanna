import 'package:rovanna_app/features/home/data/models/product_model.dart';

abstract class WishlistDataSource {
  Future<List<Productmodel>> getWishList();

  Future<void> addToWishList();

  Future<void> emptyWishList();

  Future<void> removeFromWishList();
}
