import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/product_details_show_Modal_Bottom_Sheet.dart';

class CustomButtonsFavoAdd extends StatelessWidget {
  const CustomButtonsFavoAdd({super.key});

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext bc) {
                    return const ProductDetails();
                  });
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: kPrimaryColor,
              padding: const EdgeInsets.all(10),
            ),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );

  }
}