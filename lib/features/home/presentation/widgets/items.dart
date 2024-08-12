import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.description, required this.image});
  final String description;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, // Ensure Column takes minimal vertical space
      children: [
        SizedBox(
          height: 100,
          width: 80,
          child: GestureDetector(
            onTap: () {
              
            },
            child: Image(
              image: image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: Text(
            description,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
