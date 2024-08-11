import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';

class Lable extends StatelessWidget {
  const Lable({
    super.key,
    required this.nameofCategory,
    required this.view,
    required this.ontap,
  });

  final String nameofCategory;
  final String view;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0), // Adjust as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nameofCategory,
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          GestureDetector(
            onTap: ontap,
            child: Text(
              view,
              style: const TextStyle(
                color: Color(0xff3c0008),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
