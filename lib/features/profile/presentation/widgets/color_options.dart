import 'package:flutter/material.dart';

class ColorOption extends StatelessWidget {
  const ColorOption({super.key, required this.colors, required this.label});

  final Color colors;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          children: [
            CircleAvatar(backgroundColor: colors),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
