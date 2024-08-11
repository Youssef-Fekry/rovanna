import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rovanna_app/core/utils/approuter.dart';
import 'package:rovanna_app/core/utils/constans.dart';

class AlreadyMemberLogin extends StatelessWidget {
  const AlreadyMemberLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already a member?',
            style: TextStyle(color: Colors.grey.shade600)),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kLogin);
          },
          child: const Text('Login', style: TextStyle(color: kPrimaryColor)),
        ),
      ],
    );
  }
}
