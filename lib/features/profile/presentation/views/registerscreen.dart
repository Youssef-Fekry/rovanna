import 'package:flutter/material.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/custombutton.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/textfiled.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: const Center(child: Text('SignUp')),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  TextFieldWidget(
                    hint: 'first name',
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    hint: 'last name',
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    hint: 'phone',
                    textInputType: TextInputType.phone,
                  ),
                  TextFieldWidget(
                    hint: 'email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  TextFieldWidget(
                    hint: 'Address',
                    textInputType: TextInputType.streetAddress,
                  ),
                  Custombutton(),
                  Text(
                    'skip',
                    style: TextStyle(color: Colors.blueAccent),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
