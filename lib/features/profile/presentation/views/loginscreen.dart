import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rovanna_app/core/utils/approuter.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/custombutton.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/logo.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/textfiled.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/toggile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Center(child: Text('Login')),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    Logo(),
                    const SizedBox(height: 30),
                    ToggleLoginSignup(isLogin: true),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      hintText: 'Mobile number',
                      textinputtype: TextInputType.number,
                    ),
                    const SizedBox(height: 10),
                    const CustomTextField(
                      hintText: 'Password',
                      obscureText: true,
                      textinputtype: TextInputType.visiblePassword,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 160,
                      child: CustomButton(
                        text: 'Login',
                        onPressed: () {
                          // Handle Login Action
                        },
                        width: 160,
                        height: 50,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomButton(
                      text: 'Try without account',
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kcustomebottombar);
                      },
                      color: Colors.grey.shade300,
                      textColor: Colors.black,
                      width: 160,
                      height: 50,
                    ),
                    const SizedBox(height: 20),
                    OrDivider(),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'Login with Google',
                      onPressed: () {
                        // Handle Login with Google Action
                      },
                      color: Colors.white,
                      textColor: Colors.black,
                      icon: Icons.login,
                      width: 160,
                      height: 50,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
