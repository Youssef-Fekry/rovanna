import 'package:flutter/material.dart';

class CutomProductDes extends StatelessWidget {
  const CutomProductDes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Product Name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
