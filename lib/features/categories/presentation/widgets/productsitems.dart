import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/custom_buttons_favo_add.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/custom_price_lable.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/cutom_product_des.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/imageproductcard.dart';
import 'package:rovanna_app/features/categories/presentation/widgets/product_details_show_Modal_Bottom_Sheet.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/custombutton.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback ontap;

  const ProductCard({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: ontap,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Imageproductcard(),
            CutomProductDes(),
            CustomPriceLable(),
            CustomButtonsFavoAdd(),
          ],
        ),
      ),
    );
  }
}
