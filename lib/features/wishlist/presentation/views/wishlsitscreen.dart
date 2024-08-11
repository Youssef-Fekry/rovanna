import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/wishlist/presentation/widgets/wishlistviewbody.dart';

class Wishlsitscreen extends StatelessWidget {
  const Wishlsitscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Cart')),
        backgroundColor: kPrimaryColor,
      ),
      // drawer: const Customedrawer(),
      body: const Wishlistviewbody(),
    );
  }
}
