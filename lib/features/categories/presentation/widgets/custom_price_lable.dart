import 'package:flutter/material.dart';

class CustomPriceLable extends StatelessWidget {
  const CustomPriceLable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text('1234.00 LE',
          style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }
}
