import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/signup.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: kPrimaryColor,
      //   title: const Text('Sign Up'),
      // ),
      body:  SignUpPage(),
    );
  }
}
