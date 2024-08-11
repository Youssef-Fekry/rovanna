import 'package:flutter/material.dart';
import 'package:rovanna_app/features/home/presentation/widgets/items.dart';

class Itemslistview extends StatelessWidget {
  const Itemslistview({super.key, required this.text, required this.img});
  final String text;
  final ImageProvider img;

  @override
  Widget build(BuildContext context) {
    // Calculate height as a fraction of the screen height
    final double screenHeight = MediaQuery.of(context).size.height;
    final double height =
        screenHeight * 0.2; // For example, 20% of the screen height

    return SizedBox(
      height: height, // Use the calculated height
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Items(
              description: text,
              image: img,
            ),
          );
        },
      ),
    );
  }
}
