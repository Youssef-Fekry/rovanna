import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rovanna_app/core/utils/approuter.dart';

class ToggleLoginSignup extends StatelessWidget {
  final bool isLogin;

  const ToggleLoginSignup({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (!isLogin) {
              GoRouter.of(context).pushReplacement(AppRouter.kLogin);
            }
          },
          child: Text(
            'Login',
            style: TextStyle(
              color: isLogin ? Colors.black : Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            if (isLogin) {
              context.go(AppRouter.kSignUp);
            }
          },
          child: Text(
            'Sign up',
            style: TextStyle(
              color: !isLogin ? Colors.black : Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(color: Colors.grey.shade400)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("or", style: TextStyle(color: Colors.grey.shade600)),
        ),
        Expanded(child: Divider(color: Colors.grey.shade400)),
      ],
    );
  }
}
