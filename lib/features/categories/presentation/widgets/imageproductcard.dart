import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/media.dart';

class Imageproductcard extends StatelessWidget {
  const Imageproductcard({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image(
                    image: AssetImage(Media.categoryAccessories),
                    fit: BoxFit.cover),
              ),
            );
  }
}