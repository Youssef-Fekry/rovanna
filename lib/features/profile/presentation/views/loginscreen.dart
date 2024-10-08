import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rovanna_app/core/utils/approuter.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/custombutton.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/logo.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/textfiled.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/toggile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController phonecontroller = TextEditingController();
  // TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: const Center(child: Text('Login')),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    const Logo(),
                    const SizedBox(height: 30),
                    const ToggleLoginSignup(isLogin: true),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      hintText: 'Mobile number',
                      textinputtype: TextInputType.number,
                      // inputControl: phonecontroller,
                    ),
                    const SizedBox(height: 10),
                    const CustomTextField(
                      hintText: 'Password',
                      obscureText: true,
                      textinputtype: TextInputType.visiblePassword,
                      // inputControl: passwordcontroller,
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
                        GoRouter.of(context)
                            .pushReplacement(AppRouter.kcustomebottombar);
                      },
                      color: Colors.grey.shade300,
                      textColor: Colors.black,
                      width: 160,
                      height: 50,
                    ),
                    const SizedBox(height: 20),
                    const OrDivider(),
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
