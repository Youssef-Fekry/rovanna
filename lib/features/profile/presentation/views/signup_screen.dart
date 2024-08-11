import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/alreadyamember.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/custombutton.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/logo.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/textfiled.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/toggile.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: const Center(child: Text('Sign Up')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              const Logo(),
              const SizedBox(height: 30),
              const ToggleLoginSignup(isLogin: false),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'First Name',
                textinputtype: TextInputType.text, inputControl: null,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: 'Last Name',
                textinputtype: TextInputType.text, inputControl: null,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: 'Email',
                textinputtype: TextInputType.emailAddress, inputControl: null,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: 'Mobile number',
                textinputtype: TextInputType.phone, inputControl: null,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: 'Password',
                obscureText: true,
                textinputtype: TextInputType.visiblePassword, inputControl: null,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: 'Confirm password',
                obscureText: true,
                textinputtype: TextInputType.visiblePassword, inputControl: null,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: CustomButton(
                      text: 'Confirm',
                      onPressed: () {
                        //  Confirm Action
                      },
                      width: 160,
                      height: 50,
                    ),
                  ),
                  const AlreadyMemberLogin(),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SizedBox(
                  height: 50,
                  width: 160,
                  child: CustomButton(
                    text: 'Signup with Google',
                    onPressed: () {
                      //  Signup with Google Action
                    },
                    textColor: Colors.white,
                    icon: FontAwesomeIcons.google,
                    width: 160,
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
