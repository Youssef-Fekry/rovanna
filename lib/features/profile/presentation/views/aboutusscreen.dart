import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/core/utils/media.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('About Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                Media.logo,
                width: 200,
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: const Text(
                  'Welcome to Rovanna, where style meets convenience!\n We\'re your one-stop destination for all things fashion and beauty, catering exclusively to the modern woman who embraces her unique style and loves to stay ahead of the trends.',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  strutStyle: StrutStyle(leading: 1),
                ),
              ),
            ],
          ),
          Opacity(
            opacity: 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Powered by Bluesoftec',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Image.asset(
                    'assets/images/bluesoftech_logo.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
