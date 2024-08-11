import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:lottie/lottie.dart';

import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/core/utils/media.dart';

class Wishlsitscreen extends StatelessWidget {
  const Wishlsitscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart'),
        backgroundColor: kPrimaryColor,
      ),
      // drawer: const Customedrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              Media.wishList,
              height: 100,
            ),
            const Text(
              'WhichList is empty',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const Text(
              'Start shopping now...',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.arrowRight),
              color: kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
