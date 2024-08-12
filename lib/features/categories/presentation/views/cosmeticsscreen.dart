import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/productgrid.dart';

class Cosmeticsscreen extends StatelessWidget {
  const Cosmeticsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text('Cosmetics'),
        ),
        body: const Productgrid());
  }
}
