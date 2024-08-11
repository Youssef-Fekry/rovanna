import 'package:flutter/material.dart';

class Media {
  const Media._();

  static const logo = 'assets/logo/logo.png';

  static const loading = 'assets/lottie/loading.json';

  static const cart = 'assets/lottie/cart.json';
  static const wishList = 'assets/lottie/wishlist.json';
  static const search = 'assets/lottie/search.json';
  static const categoryFashion = 'assets/category/fashion3.png';
  static const categoryAccessories = 'assets/category/accessories.png';
  static const categoryCosmatiecs = 'assets/category/cosmatiecs.png';

  static List<BoxShadow> containerShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1, // Spread radius
      blurRadius: 2, // Blur radius
      offset: const Offset(0, 2),
    )
  ];
}
