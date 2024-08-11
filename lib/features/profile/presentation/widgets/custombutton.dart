import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              color: kPrimaryColor,
              height: 40,
              width: 60,
              child: const Center(child: Text('sign up')),
            ),
          )),
    );
  }
}
