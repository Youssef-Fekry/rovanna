import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/home/presentation/widgets/customedrawer.dart';
import 'package:rovanna_app/features/home/presentation/widgets/homeviewbody.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('rovanna'),
            backgroundColor: kPrimaryColor,
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ]),
        drawer: const Customedrawer(),
        body: const Homeviewbody());
  }
}
