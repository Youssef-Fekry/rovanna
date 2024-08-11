import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({
    super.key,
    required this.label,
    required this.img,
    required this.ontap,
  });

  final String label;
  final ImageProvider img;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Ensure Column takes minimal vertical space
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 100,
              child: Image(image: img),
            ),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
